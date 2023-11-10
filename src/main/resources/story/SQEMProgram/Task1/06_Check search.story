Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

When I click on element located by `cssSelector(.header-search-ui)`

When I wait until element located by `cssSelector(.search-results__input-holder)` appears

When I enter `QA` in field located by `xpath(//input[@placeholder="What are you looking for?"])`

When I click on element located by `cssSelector(.bth-text-layer)`

Then text `RESULTS FOR` exists
