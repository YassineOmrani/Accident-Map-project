
![GitHub Logo](https://raw.githubusercontent.com/YassineOmrani/Accident-Map-project/main/img/Capture.PNG)
# Accident-Project-Map


# Setting up front-end 
* Open cmd and in "Accident-map-project/front-end/" 
* (in cmd) install dependencies using "npm install" command
* to run the front-end application use the command "yarn start"
# Setting up Back-end (api)
you need to install :
 * xampp + php 7.2
 * composer

- [x] php bin/console doctrine:database:create -> creation de la base de donnée
- [x] php bin/console doctrine:schema:update --force -> metre à jour la base avec les tables necessaires
- [x] php bin/console debug:router -> lister les url des api
- [x] php bin/console server:run -> run the server
