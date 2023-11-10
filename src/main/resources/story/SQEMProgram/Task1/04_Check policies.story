Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

Scenario: Scroll to the page footer
When I scroll context to BOTTOM edge
When I wait until element located by `cssSelector(.policies)` appears

Scenario: Check Policies are visible
Then text `INVESTORS` exists
Then text `OPEN SOURCE` exists
Then text `PRIVACY POLICY` exists
Then text `COOKIE POLICY` exists
Then text `APPLICANT PRIVACY NOTICE` exists
Then text `WEB ACCESSIBILITY` exists
