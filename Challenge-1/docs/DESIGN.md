# How the code works

3 tier Infrastructure :

Web Layer(Frontend) : Deployed as a web app using ARM Template.

Business Layer(API's) : Deployed in a Virtual machine using ARM Template.

DBLayer : Using SQL Server for storing relationol data.

# Infrastrucure Deployment

Created a main template InfrastrutureTemplate.json to deploy all nested templates.

Powershell script can be used to deploy the template using Azure Powershell commands or we can use build pipeline tasks to select specific parameter/template file to deploy it.