### Data kwaliteit analyse 

## Naming conventions - verwaarloosde tabellen en geen foreign keys

1. MHL_brands
De tabel mhl_brands wordt in het document niet gebruikt of naar verwezen via een foreign key. Hierdoor is de relatie tussen deze tabel en andere tabellen onduidelijk.
2. Foreign keys toevoegen aan cities table, districts, and communes tabel countries en aan de suppliers tabel linken aan waar suppliers_id voorkomt. 





## Stappenplan om de database te verbeteren
1. Data koppelen aan de juiste id
Vervolgens ga ik controleren of de data correct gekoppeld is aan de id van het originele tabel. Als dat nog niet zo is, ga ik de data aanpassen zodat elke foreign key verwijst naar de juiste record.

2. Resultaat controleren
Tot slot ga ik controleren of alle relaties correct werken en of de datakwaliteit is verbeterd.