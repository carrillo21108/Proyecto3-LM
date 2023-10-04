//Nodos
CREATE (guatemala:Departamento {nombre: 'Guatemala', cabecera: 'Ciudad de Guatemala'})
CREATE (elProgreso:Departamento {nombre: 'El Progreso', cabecera: 'Guastatoya'})
CREATE (sacatepequez:Departamento {nombre: 'Sacatepéquez', cabecera: 'Antigua Guatemala'})
CREATE (chimaltenango:Departamento {nombre: 'Chimaltenango', cabecera: 'Chimaltenango'})
CREATE (escuintla:Departamento {nombre: 'Escuintla', cabecera: 'Escuintla'})
CREATE (santaRosa:Departamento {nombre: 'Santa Rosa', cabecera: 'Cuilapa'})
CREATE (solola:Departamento {nombre: 'Sololá', cabecera: 'Sololá'})
CREATE (totonicapan:Departamento {nombre: 'Totonicapán', cabecera: 'Totonicapán'})
CREATE (quetzaltenango:Departamento {nombre: 'Quetzaltenango', cabecera: 'Quetzaltenango'})
CREATE (suchitepequez:Departamento {nombre: 'Suchitepéquez', cabecera: 'Mazatenango'})
CREATE (retalhuleu:Departamento {nombre: 'Retalhuleu', cabecera: 'Retalhuleu'})
CREATE (sanMarcos:Departamento {nombre: 'San Marcos', cabecera: 'San Marcos'})
CREATE (huehuetenango:Departamento {nombre: 'Huehuetenango', cabecera: 'Huehuetenango'})
CREATE (quiche:Departamento {nombre: 'Quiché', cabecera: 'Santa Cruz del Quiché'})
CREATE (bajaVerapaz:Departamento {nombre: 'Baja Verapaz', cabecera: 'Salamá'})
CREATE (altaVerapaz:Departamento {nombre: 'Alta Verapaz', cabecera: 'Cobán'})
CREATE (peten:Departamento {nombre: 'Petén', cabecera: 'Flores'})
CREATE (izabal:Departamento {nombre: 'Izabal', cabecera: 'Puerto Barrios'})
CREATE (zacapa:Departamento {nombre: 'Zacapa', cabecera: 'Zacapa'})
CREATE (chiquimula:Departamento {nombre: 'Chiquimula', cabecera: 'Chiquimula'})
CREATE (jalapa:Departamento {nombre: 'Jalapa', cabecera: 'Jalapa'})
CREATE (jutiapa:Departamento {nombre: 'Jutiapa', cabecera: 'Jutiapa'})

//Relaciones
//Guatemala
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
CREATE (guatemala)-[:Carretera {km: 91.8}]->(elProgreso)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (guatemala)-[:Carretera {km: 99.3}]->(jalapa)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
CREATE (guatemala)-[:Carretera {km: 65.6}]->(santaRosa)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
CREATE (guatemala)-[:Carretera {km: 55.2}]->(escuintla)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
CREATE (guatemala)-[:Carretera {km: 62.4}]->(sacatepequez)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (guatemala)-[:Carretera {km: 62.4}]->(chimaltenango)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
CREATE (guatemala)-[:Carretera {km: 166.1}]->(bajaVerapaz)

MATCH (guatemala:Departamento {nombre: 'Guatemala'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (guatemala)-[:Carretera {km: 257.2}]->(quiche)

//Alta Verapaz
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (peten:Departamento {nombre: 'Petén'})
CREATE (altaVerapaz)-[:Carretera {km: 387}]->(peten)

MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (izabal:Departamento {nombre: 'Izabal'})
CREATE (altaVerapaz)-[:Carretera {km: 340}]->(izabal)

MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
CREATE (altaVerapaz)-[:Carretera {km: 193}]->(zacapa)

MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
CREATE (altaVerapaz)-[:Carretera {km: 214}]->(elProgreso)

MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
CREATE (altaVerapaz)-[:Carretera {km: 49}]->(bajaVerapaz)

MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (altaVerapaz)-[:Carretera {km: 165.8}]->(quiche)

//Baja Verapaz
MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (bajaVerapaz)-[:Carretera {km: 49}]->(altaVerapaz)

MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
CREATE (bajaVerapaz)-[:Carretera {km: 85}]->(elProgreso)

MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (bajaVerapaz)-[:Carretera {km: 166.1}]->(guatemala)

MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (bajaVerapaz)-[:Carretera {km: 218}]->(quiche)

//Chimaltenango
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (chimaltenango)-[:Carretera {km: 214.1}]->(quiche)

MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (chimaltenango)-[:Carretera {km: 50.8}]->(guatemala)

MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
CREATE (chimaltenango)-[:Carretera {km: 29.7}]->(sacatepequez)

MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
CREATE (chimaltenango)-[:Carretera {km: 52.7}]->(escuintla)

MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (chimaltenango)-[:Carretera {km: 69.2}]->(solola)

MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
CREATE (chimaltenango)-[:Carretera {km: 128.1}]->(suchitepequez)

//Huehuetenango
MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (huehuetenango)-[:Carretera {km: 120 }]->(quiche)

MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
CREATE (huehuetenango)-[:Carretera {km: 125 }]->(sanMarcos)

MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
CREATE (huehuetenango)-[:Carretera {km: 60 }]->(totonicapan)

MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (huehuetenango)-[:Carretera {km: 100 }]->(quetzaltenango)

//Izabal
MATCH (izabal:Departamento {nombre: 'Izabal'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (izabal)-[:Carretera {km: 180 }]->(altaVerapaz)

MATCH (izabal:Departamento {nombre: 'Izabal'})
MATCH (peten:Departamento {nombre: 'Petén'})
CREATE (izabal)-[:Carretera {km: 160 }]->(peten)

MATCH (izabal:Departamento {nombre: 'Izabal'})
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
CREATE (izabal)-[:Carretera {km: 100 }]->(zacapa)

//Jalapa
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
CREATE (jalapa)-[:Carretera {km: 100 }]->(elProgreso)

MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
CREATE (jalapa)-[:Carretera {km: 80 }]->(jutiapa)

MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
CREATE (jalapa)-[:Carretera {km: 100 }]->(zacapa)

MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
CREATE (jalapa)-[:Carretera {km: 40 }]->(santaRosa)

MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
CREATE (jalapa)-[:Carretera {km: 60 }]->(chiquimula)

MATCH (jalapa:Departamento {nombre: 'Jalapa'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (jalapa)-[:Carretera {km: 106.9 }]->(guatemala)

//Jutiapa
MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
CREATE (jutiapa)-[:Carretera {km: 120 }]->(santaRosa)

MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
CREATE (jutiapa)-[:Carretera {km: 60 }]->(chiquimula)

MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (jutiapa)-[:Carretera {km: 53.5 }]->(jalapa)

//Totonicapán
MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (totonicapan)-[:Carretera {km: 40 }]->(solola)

MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (totonicapan)-[:Carretera {km: 120 }]->(quiche)

MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (totonicapan)-[:Carretera {km: 100 }]->(quetzaltenango)

MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
CREATE (totonicapan)-[:Carretera {km: 100 }]->(huehuetenango)

// Peten
MATCH (peten:Departamento {nombre: 'Petén'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (peten)-[:Carretera {km: 135}]->(altaVerapaz)

MATCH (peten:Departamento {nombre: 'Petén'})
MATCH (izabal:Departamento {nombre: 'Izabal'})
CREATE (peten)-[:Carretera {km: 285}]->(izabal)

MATCH (peten:Departamento {nombre: 'Petén'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (peten)-[:Carretera {km: 544.2}]->(quiche)

// Quetzaltenango
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
CREATE (quetzaltenango)-[:Carretera {km: 120}]->(huehuetenango)

MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (quetzaltenango)-[:Carretera {km: 44}]->(solola)

MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
CREATE (quetzaltenango)-[:Carretera {km: 92}]->(suchitepequez)

MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
CREATE (quetzaltenango)-[:Carretera {km: 26.9}]->(totonicapan)

MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
CREATE (quetzaltenango)-[:Carretera {km: 59.2}]->(retalhuleu)

MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
CREATE (quetzaltenango)-[:Carretera {km: 50.4}]->(sanMarcos)

// Quiché
MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (quiche)-[:Carretera {km: 155.8}]->(altaVerapaz)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (peten:Departamento {nombre: 'Petén'})
CREATE (quiche)-[:Carretera {km: 379.2}]->(peten)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
CREATE (quiche)-[:Carretera {km: 214.8}]->(bajaVerapaz)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (quiche)-[:Carretera {km: 139.5}]->(guatemala)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (quiche)-[:Carretera {km: 173.5}]->(chimaltenango)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (quiche)-[:Carretera {km: 48}]->(solola)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
CREATE (quiche)-[:Carretera {km: 37.2}]->(totonicapan)

MATCH (quiche:Departamento {nombre: 'Quiché'})
MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
CREATE (quiche)-[:Carretera {km: 87.4}]->(huehuetenango)

// Retalhuleu
MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
CREATE (retalhuleu)-[:Carretera {km: 120.4}]->(sanMarcos)

MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (retalhuleu)-[:Carretera {km: 43.4}]->(quetzaltenango)

MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (retalhuleu)-[:Carretera {km: 103.9}]->(solola)

MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
CREATE (retalhuleu)-[:Carretera {km: 32.5}]->(suchitepequez)

//Chiquimula
MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (chiquimula)-[:Carretera {km: 80.3 }]->(jalapa)

MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
CREATE (chiquimula)-[:Carretera {km: 88.1 }]->(jutiapa)

MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
CREATE (chiquimula)-[:Carretera {km: 19 }]->(zacapa)

//El Progreso
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (elProgreso)-[:Carretera {km: 92 }]->(guatemala)

MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
MATCH (bajaVerapaz:Departamento {nombre: 'Baja Verapaz'})
CREATE (elProgreso)-[:Carretera {km: 69.2 }]->(bajaVerapaz)

MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (elProgreso)-[:Carretera {km: 86.4 }]->(jalapa)

MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
CREATE (elProgreso)-[:Carretera {km: 71.3 }]->(zacapa)

MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (elProgreso)-[:Carretera {km: 330 }]->(altaVerapaz)

//Escuintla
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
CREATE (escuintla)-[:Carretera {km: 41.1 }]->(sacatepequez)

MATCH (escuintla:Departamento {nombre: 'Escuintla'})
MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
CREATE (escuintla)-[:Carretera {km: 85 }]->(santaRosa)

MATCH (escuintla:Departamento {nombre: 'Escuintla'})
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
CREATE (escuintla)-[:Carretera {km: 81.5 }]->(suchitepequez)

MATCH (escuintla:Departamento {nombre: 'Escuintla'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (escuintla)-[:Carretera {km: 52.7 }]->(chimaltenango)

MATCH (escuintla:Departamento {nombre: 'Escuintla'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (escuintla)-[:Carretera {km: 55.2 }]->(guatemala)

//Zacapa
MATCH (zacapa:Departamento {nombre: 'Zacapa'})
MATCH (elProgreso:Departamento {nombre: 'El Progreso'})
CREATE (zacapa)-[:Carretera {km: 71.3 }]->(elProgreso)

MATCH (zacapa:Departamento {nombre: 'Zacapa'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (zacapa)-[:Carretera {km: 107 }]->(jalapa)

MATCH (zacapa:Departamento {nombre: 'Zacapa'})
MATCH (chiquimula:Departamento {nombre: 'Chiquimula'})
CREATE (zacapa)-[:Carretera {km: 25.3 }]->(chiquimula)

MATCH (zacapa:Departamento {nombre: 'Zacapa'})
MATCH (izabal:Departamento {nombre: 'Izabal'})
CREATE (zacapa)-[:Carretera {km: 172.3 }]->(izabal)

MATCH (zacapa:Departamento {nombre: 'Zacapa'})
MATCH (altaVerapaz:Departamento {nombre: 'Alta Verapaz'})
CREATE (zacapa)-[:Carretera {km: 193 }]->(altaVerapaz)

//Sacatepéquez
MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (sacatepequez)-[:Carretera {km: 40 }]->(guatemala)

MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (sacatepequez)-[:Carretera {km: 27 }]->(chimaltenango)

MATCH (sacatepequez:Departamento {nombre: 'Sacatepéquez'})
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
CREATE (sacatepequez)-[:Carretera {km: 41.1 }]->(escuintla)

//San Marcos
MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
MATCH (huehuetenango:Departamento {nombre: 'Huehuetenango'})
CREATE (sanMarcos)-[:Carretera {km: 81 }]->(huehuetenango)

MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (sanMarcos)-[:Carretera {km: 33 }]->(quetzaltenango)

MATCH (sanMarcos:Departamento {nombre: 'San Marcos'})
MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
CREATE (sanMarcos)-[:Carretera {km: 104 }]->(retalhuleu)

//Santa Rosa
MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
MATCH (jalapa:Departamento {nombre: 'Jalapa'})
CREATE (santaRosa)-[:Carretera {km: 168 }]->(jalapa)

MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
MATCH (guatemala:Departamento {nombre: 'Guatemala'})
CREATE (santaRosa)-[:Carretera {km: 57 }]->(guatemala)

MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
CREATE (santaRosa)-[:Carretera {km: 85 }]->(escuintla)

MATCH (santaRosa:Departamento {nombre: 'Santa Rosa'})
MATCH (jutiapa:Departamento {nombre: 'Jutiapa'})
CREATE (santaRosa)-[:Carretera {km: 70 }]->(jutiapa)

//Sololá
MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (solola)-[:Carretera {km: 85.4 }]->(chimaltenango)

MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (totonicapan:Departamento {nombre: 'Totonicapán'})
CREATE (solola)-[:Carretera {km: 53.7 }]->(totonicapan)

MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (solola)-[:Carretera {km: 50.5 }]->(quetzaltenango)

MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
CREATE (solola)-[:Carretera {km: 109.1 }]->(suchitepequez)

MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (quiche:Departamento {nombre: 'Quiché'})
CREATE (solola)-[:Carretera {km: 156.6 }]->(quiche)

MATCH (solola:Departamento {nombre: 'Sololá'})
MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
CREATE (solola)-[:Carretera {km: 116 }]->(retalhuleu)

//Suchitepéquez
MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
MATCH (solola:Departamento {nombre: 'Sololá'})
CREATE (suchitepequez)-[:Carretera {km: 109.1 }]->(solola)

MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
MATCH (chimaltenango:Departamento {nombre: 'Chimaltenango'})
CREATE (suchitepequez)-[:Carretera {km: 127.4 }]->(chimaltenango)

MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
MATCH (quetzaltenango:Departamento {nombre: 'Quetzaltenango'})
CREATE (suchitepequez)-[:Carretera {km: 78.3 }]->(quetzaltenango)

MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
MATCH (retalhuleu:Departamento {nombre: 'Retalhuleu'})
CREATE (suchitepequez)-[:Carretera {km: 54.7 }]->(retalhuleu)

MATCH (suchitepequez:Departamento {nombre: 'Suchitepéquez'})
MATCH (escuintla:Departamento {nombre: 'Escuintla'})
CREATE (suchitepequez)-[:Carretera {km: 81.5 }]->(escuintla)

//
MATCH (n) RETURN n

//Dijkstraa
MATCH (startNode:Departamento{nombre:'Escuintla'}), (endNode:Departamento{nombre: 'Petén'})
CALL apoc.algo.dijkstra(startNode, endNode, 'Carretera>>','km') YIELD path,weight
RETURN path,weight;

MATCH (startNode:Departamento{nombre:'Huehuetenango'}), (endNode:Departamento{nombre: 'Izabal'})
CALL apoc.algo.dijkstra(startNode, endNode, 'Carretera>>','km') YIELD path,weight
RETURN path,weight;