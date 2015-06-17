Feature: Create a poll 
  As an admin, I should be able to create a poll
 
  Scenario: Create a poll
    Given I have logged in
    When I click "questions.png"
      And I wait 2 seconds for ""
      And I click "add_question.png"
      And I wait 2 seconds for ""
    Then I should see "devapp-admin.png"

  Scenario: Log into the application
    Given The login page is visible
    When I type "jenkins" into the username field
      And I type "password" into the password field
      And I click the "btn_login.png" button
    Then I should see "txt_welcome_jenkins.png"
