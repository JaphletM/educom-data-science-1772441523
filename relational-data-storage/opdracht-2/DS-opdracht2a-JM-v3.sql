
/* Data kwaliteit analyse 

## Naming conventions - verwaarloosde tabellen en geen foreign keys

## Probleem 1– Ontbrekende foreign keys

In meerdere tabellen ontbreken foreign key constraints. Daardoor wordt niet gecontroleerd of de data wel verwijst naar bestaande records in andere tabellen. Dit speelt bijvoorbeeld bij de relatie tussen cities, districts en communes met countries, en bij tabellen waar supplier_id voorkomt dat zou moeten verwijzen naar suppliers.

## Oplossing 1

Nadat gecontroleerd is dat de data naar een bestaande record verwijst (en anders op NULL wordt gezet), kan een foreign key constraint worden toegevoegd.

### Oplossing
UPDATE mhl_cities c
LEFT JOIN mhl_communes m ON c.commune_ID = m.id
SET c.commune_ID = NULL
WHERE m.id IS NULL;

Geen goede oplossing want je bent data aan het aanpassen en verwijderen 
Betere oplossing shadow table maken en waar er geeen match is data naar de shadow tabel sturen dan pas data deleten en dan een match maken. 



## Probleem 2 – Ongeldige company waarde in suppliers
In de tabel suppliers staat in de kolom company de waarde 0, zoals te zijn in de foto terwijl er geen overeenkomstige record bestaat in de tabel companies.

## Oplossing 2
De waarde 0 kan vervangen worden door NULL. Ook moet de kolom aangepast worden zodat NULL toegestaan is.


Samenvatting van wat ik heb gedaan
Tijdens deze opdracht heb ik de database opgeschoond zodat foreign keys konden worden toegevoegd. 
In de oorspronkelijke data zaten namelijk rijen waarbij een kolom verwees naar een waarde die niet bestond in de andere tabel. 
Daardoor konden de foreign keys niet worden aangemaakt.
Om dit op te lossen heb ik eerst gezocht naar deze ongeldige verwijzingen met behulp van LEFT JOIN queries. De rijen die een probleem veroorzaakten heb ik opgeslagen in zogenaamde shadow tables.
 Op deze manier blijft de originele data bewaard en gaat er niets verloren.
Daarna heb ik de originele tabellen opgeschoond door de foutieve rijen te verwijderen of de ongeldige waarden aan te passen (bijvoorbeeld door ze NULL te maken). 
Ook moest ik rekening houden met tabellen die afhankelijk zijn van andere tabellen. Daarom moesten sommige rijen eerst uit onderliggende tabellen worden verwijderd voordat de hoofdtabellen aangepast konden worden.
Nadat de data was opgeschoond, heb ik de foreign key constraints toegevoegd. Hierdoor controleert de database nu automatisch of nieuwe data nog steeds aan de juiste relaties voldoet.
In het kort
Dit proces heb ik toegepast op de volgende tabellen:
mhl_cities
mhl_suppliers
mhl_suppliers_mhl_rubriek_view
mhl_properties
mhl_detaildefs
mhl_yn_properties
mhl_hitcount
Voor deze tabellen heb ik eerst de problematische rijen gevonden, deze opgeslagen in shadow tables en daarna de originele tabellen opgeschoond zodat de foreign keys succesvol konden worden toegevoegd.

*/



CREATE TABLE mhl_cities_shadow AS
SELECT c.*
FROM mhl_cities c
LEFT JOIN mhl_communes m
    ON c.commune_ID = m.id
WHERE c.commune_ID IS NOT NULL
  AND m.id IS NULL;

  DELETE c
FROM mhl_cities c
LEFT JOIN mhl_communes m
    ON c.commune_ID = m.id
WHERE c.commune_ID IS NOT NULL
  AND m.id IS NULL;

CREATE TABLE mhl_suppliers_mhl_rubriek_view_shadow AS
SELECT m.*
FROM mhl_suppliers_mhl_rubriek_view m
LEFT JOIN mhl_suppliers s
    ON m.mhl_suppliers_ID = s.id
WHERE m.mhl_suppliers_ID IS NOT NULL
  AND s.id IS NULL;

INSERT INTO mhl_suppliers_mhl_rubriek_view_shadow 
SELECT m.*
FROM mhl_suppliers_mhl_rubriek_view m
LEFT JOIN mhl_rubrieken r
    ON m.mhl_rubriek_view_ID = r.id
WHERE m.mhl_rubriek_view_ID IS NOT NULL
  AND r.id IS NULL;



DELETE m
FROM mhl_suppliers_mhl_rubriek_view m
LEFT JOIN mhl_suppliers s
    ON m.mhl_suppliers_ID = s.id
WHERE m.mhl_suppliers_ID IS NOT NULL
  AND s.id IS NULL;DELETE m
FROM mhl_suppliers_mhl_rubriek_view m
LEFT JOIN mhl_rubrieken r
    ON m.mhl_rubriek_view_ID = r.id
WHERE m.mhl_rubriek_view_ID IS NOT NULL
  AND r.id IS NULL;

CREATE TABLE mhl_properties_shadow 
SELECT p.*
FROM mhl_properties p
LEFT JOIN mhl_suppliers s
    ON p.supplier_ID = s.id
WHERE p.supplier_ID IS NOT NULL
  AND s.id IS NULL;

INSERT INTO mhl_properties_shadow 
SELECT p.*
FROM mhl_properties p
LEFT JOIN mhl_propertytype pt
    ON p.propertytype_ID = pt.id
WHERE p.propertytype_ID IS NOT NULL
  AND pt.id IS NULL;

  DELETE p
FROM mhl_properties p
LEFT JOIN mhl_suppliers s
    ON p.supplier_ID = s.id
LEFT JOIN mhl_propertytypes pt
    ON p.propertytype_ID = pt.id
WHERE (p.supplier_ID IS NOT NULL AND s.id IS NULL)
   OR (p.propertytype_ID IS NOT NULL AND pt.id IS NULL);

CREATE TABLE mhl_detaildefs_shadow 
SELECT d.*
FROM mhl_detaildefs d
LEFT JOIN mhl_propertytypes p
    ON d.propertytype_ID = p.id
WHERE d.propertytype_ID IS NOT NULL
  AND p.id IS NULL;

  UPDATE mhl_detaildefs
SET propertytype_ID = NULL
WHERE propertytype_ID = 0;

CREATE TABLE mhl_yn_properties_shadow AS
SELECT DISTINCT y.*
FROM mhl_yn_properties y
LEFT JOIN mhl_suppliers s
    ON y.supplier_ID = s.id
LEFT JOIN mhl_propertytypes p
    ON y.propertytype_ID = p.id
WHERE (y.supplier_ID IS NOT NULL AND s.id IS NULL)
   OR (y.propertytype_ID IS NOT NULL AND p.id IS NULL);

   DELETE y
FROM mhl_yn_properties y
LEFT JOIN mhl_suppliers s
    ON y.supplier_ID = s.id
WHERE y.supplier_ID IS NOT NULL
  AND s.id IS NULL;

  DELETE y
FROM mhl_yn_properties y
LEFT JOIN mhl_propertytypes p
    ON y.propertytype_ID = p.id
WHERE y.propertytype_ID IS NOT NULL
  AND p.id IS NULL;

 CREATE TABLE suppliers_shadow AS
SELECT s.*
FROM mhl_suppliers s
LEFT JOIN mhl_cities c 
ON s.city_ID = c.id
WHERE s.city_ID IS NOT NULL 
AND c.id IS NULL;

UPDATE mhl_suppliers s
LEFT JOIN mhl_cities c
    ON s.city_ID = c.id
SET s.city_ID = NULL
WHERE s.city_ID IS NOT NULL
  AND c.id IS NULL;


SELECT s.*
FROM mhl_suppliers s
LEFT JOIN mhl_cities c 
ON s.city_ID = c.id
WHERE s.city_ID IS NOT NULL 
AND c.id IS NULL;

UPDATE mhl_suppliers s
LEFT JOIN mhl_cities c
    ON s.city_ID = c.id
SET s.city_ID = NULL
WHERE s.city_ID IS NOT NULL
  AND c.id IS NULL;

  SELECT s.*
FROM mhl_suppliers s
JOIN pc_lat_long p
    ON s.postcode = p.pc6;

    INSERT INTO suppliers_shadow
SELECT s.*
FROM mhl_suppliers s
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

INSERT INTO suppliers_shadow
SELECT s.*
FROM mhl_suppliers s
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

  CREATE TABLE mhl_properties_shadow_bad_suppliers AS
SELECT mp.*
FROM mhl_properties mp
JOIN mhl_suppliers s
    ON mp.supplier_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

DELETE mp
FROM mhl_properties mp
JOIN mhl_suppliers s
    ON mp.supplier_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

  CREATE TABLE mhl_properties_bad_suppliers_shadow AS
SELECT mp.*
FROM mhl_properties mp
JOIN mhl_suppliers s
    ON mp.supplier_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;


CREATE TABLE mhl_hitcount_bad_suppliers
SELECT h.*
FROM mhl_hitcount h
JOIN mhl_suppliers s
ON h.supplier_ID=s.id
LEFT JOIN mhl_membertypes m
ON s.membertype=m.id
WHERE s.membertype IS NOT NULL 
AND m.id IS NULL;

UPDATE mhl_suppliers s
LEFT JOIN mhl_membertypes m
    ON s.membertype = m.id
SET s.membertype = NULL
WHERE s.membertype IS NOT NULL
  AND m.id IS NULL;

  UPDATE mhl_suppliers s SET s.company = NULL WHERE s.company =0;

 CREATE TABLE mhl_contacts_shadows AS 
SELECT c.* 
FROM mhl_contacts c 
LEFT JOIN mhl_suppliers s 
ON c.supplier_ID=s.id
WHERE c.supplier_ID IS NOT NULL 
AND s.id IS NULL;

DELETE c
FROM mhl_contacts c 
LEFT JOIN mhl_suppliers s 
ON c.supplier_ID=s.id
WHERE c.supplier_ID IS NOT NULL 
AND s.id IS NULL;



DELETE mp
FROM mhl_properties mp
JOIN mhl_suppliers s
    ON mp.supplier_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

  DELETE m
FROM mhl_suppliers_mhl_rubriek_view m
JOIN mhl_suppliers s
    ON m.mhl_suppliers_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

  SELECT y.*
FROM mhl_yn_properties y
JOIN mhl_suppliers s
    ON y.supplier_ID = s.id
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;

  UPDATE mhl_suppliers s
JOIN (
    SELECT pc6, MIN(id) AS id
    FROM pc_lat_long
    GROUP BY pc6
) p
    ON s.postcode = p.pc6
SET s.pc_lat_long_ID = p.id;



CREATE TABLE hitcount_shadow AS
SELECT h.* 
FROM mhl_hitcount h
LEFT JOIN mhl_suppliers s
ON h.supplier_ID =s.id 
WHERE h.supplier_ID IS NOT NULL
AND s.id is NULL 

DELETE h 
FROM mhl_hitcount h
LEFT JOIN mhl_suppliers s
ON h.supplier_ID =s.id 
WHERE h.supplier_ID IS NOT NULL
AND s.id is NULL 

ALTER TABLE pc_lat_long
MODIFY id INT;
ALTER TABLE pc_lat_long
DROP PRIMARY KEY;
ALTER TABLE pc_lat_long
ADD PRIMARY KEY pc6

ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_postcode
FOREIGN KEY postcode
REFERENCES pc_lat_long(pc6)


ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_postcode
FOREIGN KEY (postcode)
REFERENCES pc_lat_long(pc6);


SELECT s.*
FROM mhl_suppliers s
LEFT JOIN pc_lat_long p
    ON s.postcode = p.pc6
WHERE s.postcode IS NOT NULL
  AND s.postcode <> ''
  AND p.pc6 IS NULL;


UPDATE mhl_suppliers
SET postcode = TRIM(UPPER(REPLACE(postcode, ' ', '')))
WHERE postcode IS NOT NULL;

UPDATE pc_lat_long
SET pc6 = TRIM(UPPER(REPLACE(pc6, ' ', '')))
WHERE pc6 IS NOT NULL;

UPDATE mhl_suppliers
SET postcode = TRIM(UPPER(REPLACE(postcode, ' ', '')))
WHERE postcode IS NOT NULL;

UPDATE pc_lat_long
SET pc6 = TRIM(UPPER(REPLACE(pc6, ' ', '')))
WHERE pc6 IS NOT NULL;

UPDATE mhl_suppliers
SET postcode = NULL
WHERE postcode = '';

INSERT INTO mhl_suppliers_shadow
SELECT s.*
FROM mhl_suppliers s 
LEFT JOIN mhl_membertypes m
ON s.membertype=m.id
WHERE s.membertype IS NOT NULL 
AND m.id IS NULL;














