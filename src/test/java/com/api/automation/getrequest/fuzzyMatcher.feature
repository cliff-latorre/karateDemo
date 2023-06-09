Feature: Probar endpoint get de la aplicación

  Scenario: Probar endpoint get de la aplicación con fuzzy matchers
    Given url 'https://reqres.in'
    And path '/api/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response contains {"total_pages": 2}
    And match response.data[0].id == '#number'
    And match response.data[0].email == '#notnull'
    And match response.data[0].first_name == '#string'
    And match response.data[0].avatar == '#present'
    And match response.data == '#array'
    And match response.data == '#[6]'
    And match response.data[*].first_name == '#[] #string? _ .length >= 5'


  Scenario: Probar endpoint get de la aplicación con fuzzy matchers 2
    Given url 'https://reqres.in'
    And path '/api/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response contains {"total_pages": 2}
    And match response.data == '#[6]'
    And match response.data[*].id == [7,8,9,10,11,12]
    And match response.data[*].id contains [7]
    And match response.data[*].first_name contains ['Byron']
