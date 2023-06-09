Feature: Creación de Variables in Karate


  Background:
    * def app_name = "Google"
    * def page_number = 4


  Scenario: Crear una variable
    Given def var_int = 10
    And print "Variable ==> ", var_int
    * def var_string = "Hola Mundo"
    * print "Variable ==> ", var_string
    * def var_int2 = var_int + 10
    * print "Variable ==> ", var_int2


  Scenario: Accesar a una variable
    Given print "Escenario Precio==>", var_int
    And print "Escenario Precio==>", var_int2
    And print "Escenario Precio==>", var_string


  Scenario: Accesar a una variable 2
    Given print "Escenario Precio==>", app_name
    And print "Escenario Precio==>", page_number
