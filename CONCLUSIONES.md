# Conclusiones

## 1. Implementación de automatización API REST

Se logró implementar de manera satisfactoria la automatización de pruebas API REST utilizando como herramienta
Karate Framework, lo cual el ejercicio se adecuó a cumplir con las reglas de todos los estados de un CRUD a
excepción de la eliminación de una mascota.
## 2. Uso de Karate Framework
Karate Framework permite dar la facilidad de construir pruebas por medio del uso de Gherkin, lo cual hace que sea
más rápido, legible y sobre todo mantenible debido a:
- sintaxis Gherkin
- validaciones nativas JSON
- integración con Maven y JUnit
- generación automática de reportes
- facilidad de configuración

# 3. Buenas prácticas implementadas
Durante el desarrollo de la solución se realizó la validación de implementar buenas prácticas de automatización QA,
como pueden ser:
- Base de configuración por medio de un archivo (karate-config.js) que centraliza todas las acciones administrativas.
- separación de responsabilidades
- generación dinámica de IDs para obtener información variada en cada caso de prueba ejecutado.
- reutilización de payloads, por lo cual se permite integrar todo en un solo escenario, aunque se podía dividir en varios escenarios
- validaciones de status code y estructura json
- uso de tags (@smoke) para ejecuciones selectivas si se necesitan dividir los estados de las pruebas y su tipificación
- diseño de flujo E2E estable

## 4. Manejo de problemas y estabilización de las pruebas

Durante la ejecución de las pruebas se identificaron comportamientos inestables asociados a la API pública Swagger PetStore:
- Persistencia temporal de datos
- el proceso de baseUrl debía generarse con V2, correspondiente al swagger publicado
- latencia en algunos endpoints
- respuestas variables

Para mitigar estos comportamientos se aplicaron algunas estrategias como:
- uso de datos dinámicos
- validaciones tolerantes
- desacoplamiento de escenarios
- validaciones por contrato funcional, quiere decir que se pueda controlar el endpoint

Esto ayuda mucho a identificar e implementar pruebas más robustas y reproducibles.

## 5. Reportería y reproducibilidad

La solución desarrollada permite reproducir completamente la ejecución mediante Maven utilizando comandos simples como:

```bash
mvn test
```

Además, Karate genera reportes HTML automáticos que facilitan:

- trazabilidad
- análisis de resultados
- revisión de requests y responses
- validación de evidencias

---

## 6. Conclusión general

La automatización implementada cumple satisfactoriamente los requerimientos planteados para el ejercicio técnico, proporcionando una solución:

- funcional
- mantenible
- escalable
- reproducible
- alineada con buenas prácticas QA Automation

El proyecto queda preparado para futuras mejoras como:

- integración continua (CI/CD)
- ejecución paralela
- integración con Allure Reports
- ejecución por ambientes
- pruebas data-driven
- integración con pipelines DevOps
