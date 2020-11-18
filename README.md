[![Build Status](https://img.shields.io/appveyor/ci/thiagoloureiro/netcore-jwt-integrator-extension/master.svg)](#)
[![](https://img.shields.io/tokei/lines/github/xMartinezZz/barberConfort?style=plastic)](#)
[![](https://img.shields.io/github/repo-size/xMartinezZz/barberConfort)](#)
[![GitHub Follow](https://img.shields.io/badge/Connect-xMartinezZz-blue.svg?logo=Github&longCache=true&style=social&label=Follow)](https://github.com/xMartinezZz)
[![LinkedIn Link](https://img.shields.io/badge/Connect-Marcos%20Martins-blue.svg?logo=linkedin&longCache=true&style=social&label=Connect
)](https://www.linkedin.com/in/whoismartins)

# BarberConfort

Um aplicativo para agendamento com barbeiros cadastrados, construído com a linguagem Dart utilizando o framework Flutter com persistência de dados no Firebase Realtime Database e Sqlite.

## Screen Shots

<div>
<img src="docs/1.png" width=180> 
<img src="docs/2.png" width=180> 
<img src="docs/3.png" width=180> 
<img src="docs/4.png" width=180> 
<img src="docs/5.png" width=180> 
<img src="docs/6.png" width=180> 
</div>

## Tecnologias usadas

A aplicação possui conexão com o Firebase, especificamente Realtime Database, onde guarda e manipula informações do agendamento. Também é utilizado SQLite guardando informações localmente, toda a autenticação é guardada no dispositivo, portanto se apagar o app ou formatar o celular será necessário criar um novo cadastro.

- Dart
- Flutter 
- Firebase Realtime Database
- SQlite(com a lib SQflite)
- pub packages: email_validator e url_launcher
