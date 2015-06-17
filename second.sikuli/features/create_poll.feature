Feature: Create a poll 
  As an admin, I should be able to create a poll
  As an admin, I should be able to vote on a poll
  As an admin, I should be able to delete a poll
 
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
    
  Scenario: Vote on a poll
    Given I created a poll and I see "txt_add_poll_success.png"
    When I click "url2.png"
      And I press Delete
      And I type "http://devops-devapp/polls"
      And I press Enter
      And I wait 2 seconds for "poll_link.png"
      And I click "poll_link.png"
      And I wait 2 seconds for "poll_choices.png"
      And I click "btn_choice2.png"
      And I click "btn_vote.png"
    Then I should see "vote_result.png"
    
  Scenario: Delete a poll
    Given I voted and see "vote_result.png"
    When I click "url3.png"
      And I press Delete
      And I type "http://devops-devapp/admin"
      And I press Enter
      And I wait 2 seconds for "txt_welcome_jenkins.png"
      And I click "questions.png"
      And I click "checkbox.png"
      And I click "drop_down.png"
      And I click "delete_selected.png"
      And I click "btn_go.png"
      And I wait 2 seconds for "are_you_sure.png"
      And I click "btn_yes_im_sure.png"
    Then I should see "delete_success.png"
    
  Scenario: Clean up
    Given I see "delete_success.png"
    When I click "btn_logout.png"
      And I wait 2 seconds for "logout_success.png"
      And I click "btn_close_chrome.png"
    Then I should see "applications.png"
      