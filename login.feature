Feature: HW-06 login test
  Scenario: Login success on saucedemo
    Given Open web url "https://www.saucedemo.com/"
    And Input username "standard_user" and password "secret_sauce"
    When Click login button
    Then  Should success login and redirect to homepage
  Scenario Outline: Login success on saucedemo using scenario outline
    Given Open web url "http://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Should success login and redirect to homepage
   Examples:
    |username|password|
    |standard_user|secret_sauce|
  Scenario Outline: Login faied on saucedemo using scenario outline
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click login button
    Then Failed login and showing message
    Examples:
    |username|password|
    |standard_user|asdcvbvv|




