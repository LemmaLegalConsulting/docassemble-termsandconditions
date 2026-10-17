@end_to_end
Feature: Plain language terms of use

  # Seeded with ALDashboard's static fixture generator, then reviewed against the interview.
  Scenario: Complete the interview and reach its final document screen
    Given I start the interview at "Terms_and_conditions.yml"
    And the maximum seconds for each Step in this Scenario is 240
    And the user gets to "download Terms_of_use_download" with this data:
      | var | value |
      | acknowledged_information_use['I accept the terms of use.'] | True |
      | organizations[0].name.first | Sample Legal Aid |
      | organizations[0].address.address | 123 Main Street |
      | organizations[0].address.city | Boston |
      | organizations[0].address.state | MA |
      | organizations[0].address.zip | 02108 |
      | organizations[0].email | contact@example.com |
      | sources.there_are_any | False |
      | service_choices['Cookies'] | True |
      | other_technology_choices['256 bit encryption'] | True |
      | other_technology_choices['Software firewalls'] | True |
    Then I should see the phrase "Sample Legal Aid"
