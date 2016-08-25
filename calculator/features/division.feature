Feature: division
  Scenario: Divide two numbers
    Given the input "2/2"
    When the calculator is run
    Then the output should be "1"

  Scenario Outline: Divide two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
    | input | output |
    | 2/2   | 1      |
    | 98/2  | 49     |