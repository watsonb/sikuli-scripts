Feature: Create a poll 
  As an admin, I should be able to create a poll
 
  Scenario: Create a poll
    Given I have logged in
    When I click "questions.png"
      And I wait 2 seconds for "txt_select_question.png"
      And I click "add_question.png"
      And I wait 2 seconds for "txt_add_question.png"
      And I click "question_text.png"
      And I type "automated test question"
      And I click "choice_text.png"
      And I type "auto choice 1"
      And I press Tab
      And I press Tab
      And I type "auto choice 2"
      And I press Tab
      And I press Tab
      And I type "auto choice 3"
      And I click "save_button.png"
      And I wait 2 seconds for "error_msg.png"
      And I click "btn_today.png"
      And I click "btn_now.png"
      And I click "save_button.png"
    Then I should see "txt_add_poll_success.png"