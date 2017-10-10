# Pure Access REST API Gateway
## Intro
REST API Gateway for Pure Access for Integration Purposes. 

## Contents
1. [Structure](#structure)

## Structure

Here is the Outline of the Structure of the Contents of the Respository.
```
isonas-api-gateway/
|__ api/
|   |__ swagger.yml
|—— controllers
|   |__ ...js
|   |__ ...Service.js
|—— custom-middlewares.js
|—— index.js
|—— Dockerfile
```
`api` folder contains OpenAPI specification.
`controllers` folder contains representation for the resource defined in `swagger.yml`.
`custom-middlewares.js` contains request transformation logic and is the core of the application.
`index.js` contains web server logic.
`Dockerfile` lets you to run this project in a docker container.
