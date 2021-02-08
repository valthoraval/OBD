# PostgeSQL

In this practical session, we cover many examples of database queries with the
popular DBMS PostgreSQL.

Based on the
[TP](https://lms.isae.fr/pluginfile.php/72351/mod_resource/content/1/labSQLFSD312.pdf)
by Christophe Garion, CC BY-NC-SA 2015.

## Setup

For this session, students should install [PostgreSQL](https://www.postgresql.org/download/) (v9 or higher) and [pgAdmin](https://www.pgadmin.org/) (v4). Follow the installation instructions and make sure you have an initial database setup and the `postgresql` service running on Linux.

[Installation on Arch Linux](https://wiki.archlinux.org/index.php/PostgreSQL)
[Installation on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart)
[Installation on Windows](https://www.postgresqltutorial.com/install-postgresql/)

Additionally, add your login user as a postgresql superuser to enable database creation. Once you've installated and configured PostgreSQL, create the first exercise database:

```bash
$ createdb db-mexico86
```

Confirm with pgAdmin that your database `db-mexico86` was created. You may need to create a server "local" with the host address `127.0.0.1`.

## Mexico86 database

This database contains data from the 1986 football World Cup. 

Download the creation and insertion [scripts](https://github.com/SupaeroDataScience/OBD/tree/master/scripts) and run the scripts in the `mexico` folder.

```bash
$ psql -d db-mexico86 mexico/create-tables-std.sql
```

*Exercise 1.* Look at the database creation scripts. What are the tables being created? What are their fields? Which fields are keys? Confirm these values in pgAdmin.

<details><summary>Answer</summary>

| Table | Fields |
| ----  | ------ |
| Pays  | (<u>nom</u>, poule) |
| Typematch  | (<u>type</u>) |
| Match  | (<u>paysl, paysv</u>, butsl, butsv, <u>type</u>, date)

  </details>
  
*2.* Write a query which lists the countries participating in the World Cup.

<details><summary>Answer</summary>

```
        nom         
---------------------
Argentine
Italie
Bulgarie
République de Corée
Mexique
Paraguay
Belgique
Irak
URSS
Hongrie
France
Canada
Brésil
Espagne
Irlande du Nord
Algérie
Danemark
RFA
Uruguay
Écosse
Maroc
Angleterre
Pologne
Portugal
(24 rows)
```

</details>

*3.* Write a query which lists all matches as a pair of countries per match.

<details><summary>Answer</summary>

```
        paysl        |        paysv 
---------------------|---------------------
Bulgarie            | Italie
Argentine           | République de Corée
Italie              | Argentine
République de Corée | Bulgarie
République de Corée | Italie
Argentine           | Bulgarie
Belgique            | Mexique
Paraguay            | Irak
Mexique             | Paraguay
Irak                | Belgique
Irak                | Mexique
Paraguay            | Belgique
Canada              | France
URSS                | Hongrie
France              | URSS
Hongrie             | Canada
URSS                | Canada
Hongrie             | France
Espagne             | Brésil
Algérie             | Irlande du Nord
Brésil              | Algérie
Irlande du Nord     | Espagne
Irlande du Nord     | Brésil
Algérie             | Espagne
Uruguay             | RFA
Écosse              | Danemark
Danemark            | Uruguay
RFA                 | Écosse
Écosse              | Uruguay
Danemark            | RFA
Maroc               | Pologne
Portugal            | Angleterre
Angleterre          | Maroc
Pologne             | Portugal
Angleterre          | Pologne
Maroc               | Portugal
Brésil              | Pologne
France              | Italie
Maroc               | RFA
Mexique             | Bulgarie
Argentine           | Uruguay
Angleterre          | Paraguay
URSS                | Belgique
Espagne             | Danemark
Brésil              | France
RFA                 | Mexique
Argentine           | Angleterre
Belgique            | Espagne
France              | RFA
Argentine           | Belgique
RFA                 | Argentine
(51 rows)
```

</details>

*3.* Write a query which lists the matches which took place on June 5, 1986.

<details><summary>Answer</summary>

```
        paysl        |   paysv
---------------------|-----------
Italie              | Argentine
République de Corée | Bulgarie
France              | URSS
(3 rows)
```

</details>

*4.* Write a query which lists the countries which France played against (hint, France could have played either side).

<details><summary>Answer</summary>

```
pays
---------
Brésil
Canada
Hongrie
Italie
RFA
URSS
(6 rows)
```

</details>

*5.* Write a query which returns the winner of the World Cup

<details><summary>Answer</summary>

```
pays
-----------
Argentine
(1 row)
```

</details>

## Beer database

```bash
$ createdb db-beer
```

```bash
$ psql -d beer beer/create-tables-std.sql
$ psql -d beer beer/insert.sql
```

