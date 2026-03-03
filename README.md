Voordat we gaan bekijken hoe een relationele database met behulp van SQL te ondervragen, is het handig om eerst een beeld te krijgen wat een relationele database is hoe deze tot stand komt.

Hiervoor gaan we een 6-tal opdrachten doen:

* Aan hand van de module 'Gegevens Analyse' gaan je de eerste opdracht [#2] maken: het samenstellen van een ERD op basis van een beschrijving van een gewenst informatiesysteem. Je leert in-a-nutshell hoe je een gegevensverzameling kunt modelleren en hoe de relaties te duiden en vast te leggen in schema's.

* In opdracht 2 [#3] gaan we kijken of je van een bestaande complexe database een compleet ERD kan maken.
* In opdracht 3 [#4] kijken we naar eenvoudige SELECT met daarnaast filtering (WHERE) en sorteren (ORDER BY).
* In opdracht 4 [#5] kijken we naar SELECT uit meerdere tabellen met verschillende soorten JOINS zonder en met NULL waarden
* In opdracht 5 [#6] kijken we naar tellen, rekenen, groeperen (GROUP BY), IF-CASE en VIEWs
* In opdracht 6 [#7] tenslotte hebben we INNER SELECTs, sub-queries en datum- en string manipulatie

Optioneel kan je daarna nog een verdieping in SQL [#8] doen met o.a. stored procerudals etc.



Assessment Theorie: 

2. Data Analist 
3. DBA

1.DBA's beheren databases voor andere gebruikers.

1.ERD's identificeren primary keys (primaire sleutels).
2.ERD's vormen een visuele weergave.
3.ERD's tonen de relaties tussen tabellen.
4.ERD's versnellen de tijd die je nodig hebt om een query te maken.

1.SELECT FirstName LastName Company FROM customers

2.1-op-N
3.relationeel model

2.Je moet een datatype definiëren voor iedere kolom op het moment dat je de tabel creëert.

1.kolom1

3.select

1.SELECT name FROM Artists WHERE name LIKE 'K%'

2. onjuist 


15.3.Queries met wildcards draaien langer in vergelijking met queries met logische vergelijkingen.

16.4. ORDER BY kan niet gebruikt worden om te sorteren op een kolom die niet opgehaald wordt in de query.
2.ORDER BY kan betrekking hebben op meerdere kolommen.

17+ (optellen/addition)
/ (delen/division)
- (aftrekken/substraction)
* (vermenigvuldigen/multiplication)

18.2.COUNT()
4.DISTINCT()

2.GROUP BY kan betrekking hebben op meerdere kolommen.
3.Alle kolommen in een SELECT query mogen/kunnen opgenomen worden in een GROUP BY statement, behalve aggregaties.

2.HAVING-filters hebben betrekking op gegroepeerde data.


2.SELECT, FROM, WHERE, GROUP BY, HAVING


3.Subqueries als eerste voeren de query uit waarvan jij aangeeft dat deze als eerste moet worden uitgevoerd.

2.Het type query dat jij het beste snapt en het snelste kunt schrijven

3.Inner join

26.2De naam van de tabel komt pas na de join conditie

27.Het enige verschil tussen een left join en een right join is de volgorde waarin de tabellen worden verbonden.

28.2.200

29.3.UNIONs worden gebruikt om de resultaten van twee of meer SELECT-queries te combineren.
4.De volgorde van de kolommen in de SELECTs van een UNION doet er niet toe.

30.2.Date uit meerdere tabellen op te halen.

31.UPPER()
LOWER()
SUBSTRING()
TRIM()
CONCATENATE()

32.SELECT SUBSTR('You are beautiful.', 3)
error 

1. geen resultaat 

37.INSERT VIEW customers AS SELECT * FROM customers WHERE Name LIKE '%I'

38.2.Het uitfilteren van ongewenste data-elementen.
3.Data te leren kennen en begrijpen


2.De data kennen en begrijpen.
3. Beslissing wat in de (client)applicatie gedaan moet worden en wat binnen het RDBMS.





