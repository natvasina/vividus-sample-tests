Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

Scenario: Verify page title
Then page title is equal to `EPAM | Software Engineering & Product Development Services`
