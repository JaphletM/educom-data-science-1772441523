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

CREATE TABLE mhl_suppliers_mhl_rubriek_view_shadow AS
SELECT m.*
FROM mhl_suppliers_mhl_rubriek_view m
LEFT JOIN mhl_suppliers s
    ON m.mhl_suppliers_ID = m.id
WHERE c.mhl_suppliers_ID IS NOT NULL
  AND m.id IS NULL;

INSERT INTO mhl_suppliers_mhl_rubriek_view_shadow 
SELECT m.*
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
LEFT JOIN mhl_suppliers s
    ON p.propertytype_ID = s.id
WHERE p.propertytype_ID IS NOT NULL
  AND s.id IS NULL;

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


