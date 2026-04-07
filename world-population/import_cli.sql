
/*cli command: 

/Applications/XAMPP/xamppfiles/bin/mysql --local-infile=1 -u root population_database < /Applications/XAMPP/xamppfiles/htdocs/educom-data-science/world-population/import_cli.sql

*/

USE population_database;

TRUNCATE TABLE country;


LOAD DATA LOCAL INFILE '/Applications/XAMPP/xamppfiles/htdocs/educom-data-science/json-query/country.csv'
INTO TABLE country
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM country LIMIT 5;


