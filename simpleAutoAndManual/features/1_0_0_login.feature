@automatedFeature
Feature: (SRS 1.0.0) Login to the website
  In order to access our Company's awesome data
  I need to be able to login to our Company's website via the Google Chrome browser
  As Jenkins  
  
  @automatedScenarioOne
  Scenario: (SRS 1.1.0) Access Login Page
    Given I have launched Google Chrome
      And I wait at least 20 seconds for "chrome_open2.png" to appear
    When I click "url.png"
      And I type "http://devops-devapp/admin"
      And I press Enter
    Then I should see "devapp-admin.png"

  @automatedScenarioTwo
  Scenario: (SRS 1.2.0) Log into the application
    Given The login page is visible
    When I type "jenkins" into the username field
      And I type "password" into the password field
      And I click the "btn_login.png" button
    Then I should see "txt_welcome_jenkins.png"
    
  @automatedScenarioThree
  Scenario: (SRS 1.3.0) Log out of the application    
    When I click "btn_logout.png"
      And I wait 2 seconds for "logout_success.png"
      And I click "button_close_chrome.png"
    Then I should see "applications.png"