Feature: Probar endpoint get de la aplicación


  Background: Configuración inicial
    Given url 'https://reqres.in'

  Scenario: Probar endpoint get de la aplicación con JSON
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    And print response

  #url 'https://reqres.in'
  #path '/api/users?page=2'

  Scenario: Probar endpoint get de la aplicación con JSON with params
    Given url 'https://reqres.in'
    And path '/api/users'
    And param page = 2
    When method get
    Then status 200
    And print response
