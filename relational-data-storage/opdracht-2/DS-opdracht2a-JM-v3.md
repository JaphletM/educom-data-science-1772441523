### Data kwaliteit analyse 

## Naming conventions - verwaarloosde tabellen en geen foreign keys

## Probleem 1 – Ongebruikte tabellen (mhl_brands, pc_lat_long)

De tabellen mhl_brands en pc_lat_long worden nergens in de database gebruikt en er wordt ook niet via foreign keys naar verwezen. Hierdoor is het onduidelijk wat de functie van deze tabellen is binnen de database.

## Oplossing 1
Als deze tabellen inderdaad niet gebruikt worden voor de opdracht of applicatie, kunnen ze verwijderd worden. Dit maakt de database overzichtelijker.

## Probleem 2 – Ongeldige supplier_id en city_id

<img src="relational-data-storage/opdracht-2/supliers_table.png"> 
<img src="relational-data-storage/opdracht-2/cities_tabel.png">
In de tabel suppliers_rubriek_view_id staan supplier_id waarden die niet overeenkomen met de ID’s in de tabel suppliers. De suppliers tabel bevat ID’s tot 27, terwijl er in suppliers_rubriek_view_id verwijzingen staan naar ID’s boven de 100.
Daarnaast verwijst city_id in de tabel suppliers naar een city met ID 894, terwijl deze niet bestaat in de tabel cities.

## Oplossing 2
De data moet gecontroleerd worden zodat alle verwijzingen naar bestaande records gaan. Als een juiste koppeling niet mogelijk is, kan de waarde op NULL gezet worden zodat er geen ongeldige referentie meer is.
## Probleem 3 – Ontbrekende foreign keys

In meerdere tabellen ontbreken foreign key constraints. Daardoor wordt niet gecontroleerd of de data wel verwijst naar bestaande records in andere tabellen. Dit speelt bijvoorbeeld bij de relatie tussen cities, districts en communes met countries, en bij tabellen waar supplier_id voorkomt dat zou moeten verwijzen naar suppliers.

## Oplossing 3

Nadat gecontroleerd is dat de data naar een bestaande record verwijst (en anders op NULL wordt gezet), kan een foreign key constraint worden toegevoegd.

## Probleem 4 – Ongeldige company waarde in suppliers
In de tabel suppliers staat in de kolom company de waarde 0, zoals te zijn in de foto terwijl er geen overeenkomstige record bestaat in de tabel companies.

## Oplossing 4
De waarde 0 kan vervangen worden door NULL. Ook moet de kolom aangepast worden zodat NULL toegestaan is.

## Probleem 5 – Geen primary key in hitcount
<img src="relational-data-storage/opdracht-2/hitcount_tabel.png">

De tabel hitcount heeft geen primary key. Daardoor kunnen records niet uniek geïdentificeerd worden.

## Oplossing 5
Een primary key toevoegen aan de tabel, bijvoorbeeld een auto-increment id.
## Probleem 6 – Lege waarden in plaats van NULL
<img src="relational-data-storage/opdracht-2/contact_tabel.png">
In sommige tabellen worden lege waarden zoals de contact tabel in de foto gebruikt waar eigenlijk NULL bedoeld is. Dit kan voor verwarring zorgen bij het verwerken van data.

## Oplossing 6 
Lege waarden vervangen door NULL.


