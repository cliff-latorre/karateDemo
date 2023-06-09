Feature: Validar el método GET de la aplicación, comparando el response con un json del fichero
  revisando el response body


  Background: Configuración inicial
    Given url 'https://reqres.in'

  Scenario: Probar endpoint get de la aplicación con JSON
    Given url 'https://reqres.in'
    And path '/api/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    * def expectedResponse = read('/data/JsonResponse.json')
    * print expectedResponse
    And match response == expectedResponse
    And print "File ===> " + expectedResponse
