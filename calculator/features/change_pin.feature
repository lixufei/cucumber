#Feature: Change PIN
#  As soon as the bank issues new cards to customers.
#
#  Background:
#    Given I have been issued a new card
#    And I insert the card, entering the correct PIN
#    And I choose "change PIN" from the menu
#
#  Scenario: Change PIN successfully
#    When I change the PIN to 9876
#    Then the system should remember my PIN is now 9876
#
#  Scenario: Try to change PIN to the same as before
#    When I try to change the PIN to the original PIN number
#    Then I should see a warning message
#    And the systems should not have changed my PIN