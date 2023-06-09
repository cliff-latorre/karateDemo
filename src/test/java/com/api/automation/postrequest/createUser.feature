Feature: Validar el método POST de la aplicación



  Background: Configuración inicial
    Given url 'https://reqres.in'

  Scenario: Probar endpoint POST de la aplicación con JSON
    Given path '/api/users'
    * def job = 'leader'
    And request { "name": "morpheus", "job": "#(job)" }
    And headers {Accept: 'application/json', 'Content-Type': 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == job
    And print response



  Scenario: Probar endpoint POST de la aplicación con JSON recuperando el body desde un file
    Given path '/api/users'
    * def body = read('/data/userEntry.json')
    And request body
    And headers {Accept: 'application/json', 'Content-Type': 'application/json'}
    When method post
    Then status 201
    And match response.name == 'ivan'
    And match response.job == 'leader'
    And print response
