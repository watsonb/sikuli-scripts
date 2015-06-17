Feature: Login
  I should be able to access the login page with the Google Chrome browser
  I should be able to login
  
  Scenario: Access Login Page
    Given I have launched Google Chrome
      And I wait at least 20 seconds for "chrome_open2.png" to appear
    When I click "url.png"
      And I type "http://devops-devapp/admin"
      And I press Enter
    Then I should see "devapp-admin.png"

  Scenario: Log into the application
    Given The login page is visible
    When I type "jenkins" into the username field
      And I type "password" into the password field
      And I click the "btn_login.png" button
    Then I should see "txt_welcome_jenkins.png"
