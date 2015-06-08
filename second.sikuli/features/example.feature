Feature: Login
  
  Scenario: Login 
    Given I have launched Google Chrome
    And I wait at least 20 seconds for "chrome_open2.png" to appear
    When I type "http://devops-devapp/admin"
    Then I should see "devapp-admin.png"
