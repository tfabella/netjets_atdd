Feature: View Payment History

  Scenario: Go to Payment History from home page
    When I go to my Payment History
    Then I can view all of my paid bills

#  Scenario: Sort my Payment History by most recent date
#    When I sort my payments by date
#    Then I can view all of my paid bills with the most recent payment displaying at the top of the list
#    And my oldest payment at the bottom of the list

  Scenario: Sort my Payment History by the oldest date
    When I sort my payments by date
    Then I can view all of my paid bills with the oldest payment displaying at the top of the list
    And my most recent payment at the bottom of the list

  Scenario: Sort my Payment History by payee
    When I sort my payments by payee's name
    Then I can view all of my paid bills sorted by payee's name in alphabetical order

  Scenario: Go to Payment History after making a payment
    When I pay a bill
    Then I should see my payment on my Payment History