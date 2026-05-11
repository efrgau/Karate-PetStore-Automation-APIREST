Feature: Flujo E2E PetStore

  Background:
    * url baseUrl

    * def randomId = Math.floor(Math.random() * 1000000)

    * def pet =
    """
    {
      "id": #(randomId),
      "name": "Firulais",
      "status": "available"
    }
    """
  @smoke
  Scenario: Flujo completo mascota

    # Crear mascota
    Given path 'pet'
    And request pet
    When method POST
    Then status 200

    * print response

    And match response contains
        """
        {
          id: '#number',
          name: '#string',
          status: '#string'
        }
        """

    And match response.id == randomId
    And match response.status == 'available'

    # Consultar mascota creada
    Given path 'pet', randomId
    When method GET
    Then status 200

    * print response

    And match response.id == randomId
    And match response.name == 'Firulais'

    # Actualizar mascota
    * set pet.name = 'Firulais Updated'
    * set pet.status = 'sold'

    Given path 'pet'
    And request pet
    When method PUT
    Then status 200

    * print response

    And match response.status == 'sold'

    # Validar actualización directa por ID
    Given path 'pet', randomId
    When method GET
    Then status 200

    * print response

    And match response.id == randomId
    And match response.status == 'sold'

    # Validar por el status SOLD

    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200

    * print response

    # Validar que sea un arreglo JSON
    And match response == '#[]'

    # Validar que tenga resultados
    And assert response.length > 0

    # Validar que todos tengan status sold
    And match each response[*].status == 'sold'
