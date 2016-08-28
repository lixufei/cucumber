Feature: adding
  Scenario: Add two numbers
    Given the input "2+2"
    When the calculator is run
    Then the output should be "4"

  Scenario Outline: Add two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
    | input | output |
    | 2+2   | 4      |
    | 98+2  | 100    |

  Scenario: Get flight number
    Given the flight EZY4567 is leaving today
    Given the flight C038 is leaving today
    Given the flight BA01618 is leaving today

  Scenario: Transfer funds from savings into checking account
    When I transfer $500 from my Savings Account into my Checking Account
    Given I have 1 cucumbers in my basket
    Given I have 256 cucumbers in my basket
    When I visit homepage
    When I go to homepage