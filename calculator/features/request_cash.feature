Feature: Request cash from ATM
  @request
  Scenario: Successfully withdraw from an account in credit
    Given my account has been credited $100
    When I request $20
    Then $20 should be dispensed
    And the balance of my account should be $80