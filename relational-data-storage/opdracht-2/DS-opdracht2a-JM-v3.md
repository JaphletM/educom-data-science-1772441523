### Data kwaliteit analyse 

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








## Probleem 2 – Ongeldige company waarde in suppliers
In de tabel suppliers staat in de kolom company de waarde 0, zoals te zijn in de foto terwijl er geen overeenkomstige record bestaat in de tabel companies.

## Oplossing 2
De waarde 0 kan vervangen worden door NULL. Ook moet de kolom aangepast worden zodat NULL toegestaan is.

## Probleem 3 – Geen primary key in hitcount
<img src="relational-data-storage/opdracht-2/hitcount_tabel.png">

De tabel hitcount heeft geen primary key. Daardoor kunnen records niet uniek geïdentificeerd worden.

## Oplossing 3
Een primary key toevoegen aan de tabel, bijvoorbeeld een auto-increment id.

Feedback: is niet noodzalijk 

## Probleem 4 – Lege waarden in plaats van NULL
<img src="relational-data-storage/opdracht-2/contact_tabel.png">
In sommige tabellen worden lege waarden zoals de contact tabel in de foto gebruikt waar eigenlijk NULL bedoeld is. Dit kan voor verwarring zorgen bij het verwerken van data.

## Oplossing 4 
Lege waarden vervangen door NULL.


