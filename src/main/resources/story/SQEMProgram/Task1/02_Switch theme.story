Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

When I save `class` attribute value of element located by `By.xpath(//body[@data-mode-switcher='true'])` to SCENARIO variable `isDarkMode`


Scenario: Click on toogle
When I click on element located by `cssSelector(.theme-switcher)`

When I save `class` attribute value of element located by `By.xpath(//body[@data-mode-switcher='true'])` to SCENARIO variable `isLightMode`

Then `${isDarkMode}` is not equal to `${isLightMode}`
Then `${isLightMode}` is equal to `fonts-loaded light-mode`
