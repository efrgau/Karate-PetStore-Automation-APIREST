# Karate PetStore API Automation

Proyecto de automatización API REST desarrollado
con Karate Framework para validar el flujo E2E
de la API Pública Swagger PetStore.

---
# Objetivo 
Automatizar los siguientes escenarios sobre la API PetStore:
- Crear una mascota
- Consultar la mascota ingresada anteriormente por ID
- Actualizar el nombre de la mascota y el estatus de las mascota a "sold"
- Consultar la mascota modificada por estatus
---
# Tecnologías utilizadas
| Tecnologías      | Versión              |
|------------------|----------------------|
| Java             | 17                   |
| Maven            | 3.9+                 |
| Karate Framework | 1.4.1                |
| JUnit            | 5                    |
| Intellij IDEA    | Recomendado          |
| Git              | Control de versiones |

---
# Arquitectura del proyecto
````text
karate-petstore/
│
├── src/
│   └── test/
│       └── java/
│           ├── features/
│           │   └── petstore.feature
│           │
│           ├── runners/
│           │   └── TestRunner.java
│           │
│           ├── data/
│           │
│           └── karate-config.js
│
├── target/
├── pom.xml
├── README.md
└── .gitignore
````
---
# Requisitos previos
Antes de ejecutar el proyecto, instalar:
- Java 17
- Maven
- Git
---
# Validar instalaciones
## Java
````bash
java -version
````
---
## Maven
````bash
mvn -version
````
---
````bash
git --version
````
---
# Clonar el proyecto 
````bash
git clone https://github.com/efrgau/Karate-PetStore-Automation-APIREST.git

````
# Ingresar al proyecto:
````bash
cd karate-petstore
````
---
# Instalar dependencias 
````bash
mvn clean install
````
---
# Ejecutar automatización
## Ejecutar todos los escenarios
````bash
mvn test
````
---
## Ejecutar por tags
### CMD
````bash
mvn test -Dkarate.options="--tags @smoke"
````

### PowerShell
````bash
mvn test '-Dkarate.options=--tags @smoke'
````
---
# Reportes
Karate genera automáticamente reportes HTML en:

```text
target/karate-reports/
```

Archivo principal:

```text
karate-summary.html
```

Abrir el archivo en navegador para visualizar:

- Requests
- Responses
- Assertions
- Tiempos de ejecución
- Resultados de pruebas

---
# Evidencias

Las evidencias de ejecución se encuentran en:

- `/evidences`
- `/reports`

Incluyen:

- ejecución exitosa
- reporte HTML Karate
- validaciones API
- ejecución por tags

---

# Autor

Edwin Pacheco

QA Automation Engineer
