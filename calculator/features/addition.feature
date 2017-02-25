Feature: Addition operation
  Learn how to get addition value.

#  Background:
#    Given I am a child
#    And I am starting to go to school
#    And I want to know the basic addition operation
  @child_addition
  Scenario: Addition
    When I open addition page
    And I input the first and second value
    And I click the equal button
    Then The last input box should be the addition of the first two values