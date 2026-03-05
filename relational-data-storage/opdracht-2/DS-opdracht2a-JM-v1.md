### Data kwaliteit analyse 

## Naming conventions - verwaarloosde tabellen en geen foreign keys

1. MHL_brands
De tabel mhl_brands wordt in het document niet gebruikt of naar verwezen via een foreign key. Hierdoor is de relatie tussen deze tabel en andere tabellen onduidelijk.
2. Postcode koppeling in mhl_suppliers
In de tabel mhl_suppliers wordt geen gebruik gemaakt van een foreign key naar de tabel pc_lat_long. In plaats daarvan worden de postcodes handmatig ingevuld. Hierdoor ontbreekt referentiële integriteit tussen deze tabellen.
3. Meerdere properties in één veld
In de tabel detail_defs worden meerdere properties als een string in één veld opgeslagen in plaats van in afzonderlijke rijen. Dit gaat tegen het principe van normalisatie in, waarbij elke rij slechts één datapunt zou moeten bevatten.




## Stappenplan om de database te verbeteren
1. Controleren van de foreign keys
Eerst ga ik controleren of de foreign keys in de database een consequente naamgeving hebben.
2. Foreign keys hernoemen
Daarna ga ik de foreign keys dezelfde naam geven als het tabel waarnaar ze verwijzen, met _id erachter. Hierdoor wordt de structuur duidelijker en consistenter.
3. Data koppelen aan de juiste id
Vervolgens ga ik controleren of de data correct gekoppeld is aan de id van het originele tabel. Als dat nog niet zo is, ga ik de data aanpassen zodat elke foreign key verwijst naar de juiste record.
4. Controleren op meerdere waarden in één veld
Daarna ga ik controleren of er kolommen zijn waarin meerdere waarden in één veld staan.
5. Zorgen voor één datapunt per rij
Als dat het geval is, ga ik de data opsplitsen zodat elke rij slechts één datapunt bevat. Dit verbetert de normalisatie van de database.
6. Resultaat controleren
Tot slot ga ik controleren of alle relaties correct werken en of de datakwaliteit is verbeterd.