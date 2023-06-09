Feature: Validar el método POST de la aplicación, llamando a una clase de Java

  Background: Configuración inicial
    Given url 'https://reqres.in'

  @smoke
  Scenario: Probar endpoint POST de la aplicación con JSON asd
    Given path '/api/users'
    * def javaUtils = Java.type('utils.Util')
    * def randomName = javaUtils.randomName()
    * print randomName
    And request { "name": "#(randomName)", "job": "leader" }
    And headers {Accept: 'application/json', 'Content-Type': 'application/json'}
    When method post
    Then status 201
    And match response.name == '#(randomName)'
    And match response.job == 'leader'
    And print response

  @regression
  Scenario: Probar endpoint POST de la aplicación con JSON 2
    Given path '/api/users'
    * def javaUtils = Java.type('utils.Util')
    * def randomName = javaUtils.cutName('Giovanni')
    * print randomName
    And request { "name": "#(randomName)", "job": "leader" }
    And headers {Accept: 'application/json', 'Content-Type': 'application/json'}
    When method post
    Then status 201
    And match response.name == '#(randomName)'
    And match response.job == 'leader'
    And print response
