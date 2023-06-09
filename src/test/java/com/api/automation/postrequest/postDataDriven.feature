Feature: Validar el método POST de la aplicación

  Background: Configuración inicial
    Given url 'https://reqres.in'


  Scenario Outline: ejecuntando example con url '<url>'
  Given print '<url>'
  When print '<path>'
  Then print '<method>'
  And print '<status>'

    Examples:
      | url                 | path           | method | status |
      | https://reqres.in | /api/users  | post | 200    |
      | https://reqres.in | /api/users/2 | post | 201    |



  Scenario Outline: Probar endpoint POST de la aplicación con JSON con ejemplos '<name>'
    Given path '/api/users'
    And request { "name": "<name>", "job": "<job>" }
    And headers {Accept: 'application/json', 'Content-Type': 'application/json'}
    When method post
    Then status 201
    And match response.name == '<name>'
    And match response.job == '<job>'
    And print response

    Examples:
      | name     | job    |
      | morpheus | leader |
      | Lorena   | PM     |
