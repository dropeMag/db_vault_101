<h1 align='center'>
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
  VAULT 101 DATABASE
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
</h1>

</br>

<div align='center'>

  ![MySQL](https://img.shields.io/badge/mysql-127369.svg?style=for-the-badge&logo=mysql&logoColor=white)
  [![License: MIT](https://img.shields.io/badge/License-MIT-127369.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

</div>

A database to use in a post-apocalyptic underground city (in case we live the Fallout scenario).

This database organizes and registers dwellers, items, and actions for city management by utilizing stored procedures and functions.

</br>


<h1 align='center'>
  
  ![capsule_616x353](https://github.com/dropeMag/db_vault_101/assets/107576199/56d6ddfc-7b40-4d7e-b877-6d15fa64115a)

</h1>


# SUMMARY

- [Conceptual Schema](#conceptual-schema)
- [Logical Schema](#logical-schema)
- [Strong Entities](#strong-entities)
- [Associative Entities](#associative-entities)
- [Functions](#functions)
- [Stored Procedures](#stored-procedures)
- [Conection](#conection)

---

# CONCEPTUAL SCHEMA

![conceptual_schema_complete](https://github.com/dropeMag/db_vault_101/assets/107576199/1699ed53-f898-4ba5-9330-bd9f238616c7)

---

# LOGICAL SCHEMA

![logical_schema_complete](https://github.com/dropeMag/db_vault_101/assets/107576199/bace0978-3077-4282-8ab1-264b03457e8c)

---

# STRONG ENTITIES

- Decease.
- Decease_type.
- Diary.
- Dweller.
- Exploration.
- Incident.
- Incident_type.
- Junk.
- Kinship.
- Outfit.
- Pet.
- Quest.
- Room.
- Room_type.
- Sale.
- Scrap.
- Special.
- Storage.
- Weapon.

---

# ASSOCIATIVE ENTITIES

- Dweller_quest.
- Storage_exploration.
- Storage_scrap.
- Storage_quest.

---

# FUNCTIONS

`fn_calculate_junk`: Calculates how much junk is available in storage for sale and scrap

`fn_calculate_outfit`: Calculates how much outfit is available in storage for use, sale, and scrap

`fn_calculate_pet`: Calculates how much pet is available in storage for use, sale, and scrap

`fn_calculate_weapon`: Calculates how much weapon is available in storage for use, sale, and scrap

`fn_count_floor_size`: Counts the sizes of the floor, to make sure there isn’t too much room in it

`fn_insert_kinship`: Inserts a new kinship or returns the id_kinship for the existing kinship

`fn_string_filter`: Filters a string, removing invalid characters

`fn_string_length`: Filters a string, calculating its real length

`fn_verify_special`: Verify if SPECIAL is valid

`fn_verify_storage`: Calculates how much product (it can be outfit, weapon, pet, and junk) has at storage

---

# STORED PROCEDURES

There're a lot of stored procedures to be write here, so check the [documentation](https://github.com/dropeMag/db_vault_101/blob/main/documentation/Documentation.pdf) to see them all.

---

# CONECTION

## Informations

The visit can only use **SELECT** on the database.

The database will be named as **db_vault_101**.

The host has some limitations, so the database may go offline sometimes, but it will come back online in a few days.

## Parameters

`HOST:` containers-us-west-124.railway.app

`PORT:` 6172

`USER:` visita

`PASSWORD:` 1234

## Requirements

- Have a DBMS on your machine;
- Stable internet connection;
- Basic knowledge of DQL (Data Query Language).

## Step by Step

1. Open your DBMS;
2. Setup a new connection with the given parameters;
3. Have fun.




