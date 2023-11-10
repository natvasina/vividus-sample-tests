Scenario: Open main page
When I open URL `https://www.epam.com/about` in new tab

When I click on element located by `xpath(//a[@class="header__logo-container desktop-logo"])`

Then `${current-page-url}` is equal to `https://www.epam.com/`
