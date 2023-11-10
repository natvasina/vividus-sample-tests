Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

Scenario: Click on laguage selector
When I click on element located by `cssSelector(.location-selector-ui)`
Then text `Select a language` exists

Scenario: Check laguage menu opened
When I click on element located by `cssSelector(.location-selector__list [lang=uk])`

Scenario: Check UA site opened
Then `${current-page-url}` is equal to `https://careers.epam.ua/`
Then text `EPAM #STANDWITHUKRAINE` exists
