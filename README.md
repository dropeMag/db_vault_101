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


# SUMMARY

- [Conceptual Schema](#conceptual-schema)
- [Logical Schema](#logical-schema)
- [Strong Entities](#strong-entities)
- [Associative Entities](#associative-entities)
<!--
- [Dicionário](#dicionário-de-dados)
- [Conexão](#conexão)
-->
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
<!--
# DICIONÁRIO DE DADOS

Segue o [link](https://github.com/dropeMag/projeto_final_curso_DBA/wiki/Dicion%C3%A1rio-de-Dados) do Wiki para visualizar o dicionário completo.

---

# CONEXÃO

## Informações

O visitante terá a oportunidade de realizar apenas o **SELECT** nas tabelas.

A database está nomeada como **railway**.

A plataforma de hospedagem possui certas limitações, portanto, o banco de dados pode ficar fora em determinados períodos, mas em poucos dias regressará!

## Dados

`HOST:` containers-us-west-124.railway.app

`PORT:` 6172

`USER:` visita

`SENHA:` 1234

## Requisitos

- Possuir um SGBD em sua máquina;
- Conexão estável com a internet;
- Conhecimentos básicos de DQL (Data Query Language).

## Passo a Passo

1. Abra o SGBD de sua preferência;
2. Inicie uma nova conexão com os dados fornecidos;
3. Realize as consultas que desejar.
-->



