Scenario: Open main page
When I open URL `https://www.epam.com` in new tab

When I scroll element located by `cssSelector(.tabs-ui-23)` into view

Then text `Locations` exists
Then text `AMERICAS` exists
Then text `EMEA` exists
Then text `APAC` exists

When I save `aria-selected` attribute value of element located by `By.xpath(//a[@data-item="0"])` to SCENARIO variable `isFirstTabSelected`
Then `${isFirstTabSelected}` is equal to `true`
Then text `Dominican Republic` exists

When I click on element located by `By.xpath(//a[@data-item="1"])`
Then text `Belarus` exists
When I save `aria-selected` attribute value of element located by `By.xpath(//a[@data-item="0"])` to SCENARIO variable `isFirstTabSelected`
Then `${isFirstTabSelected}` is equal to `false`
When I save `aria-selected` attribute value of element located by `By.xpath(//a[@data-item="1"])` to SCENARIO variable `isSecondTabSelected`
Then `${isSecondTabSelected}` is equal to `true`

When I click on element located by `By.xpath(//a[@data-item="2"])`
Then text `China` exists
When I save `aria-selected` attribute value of element located by `By.xpath(//a[@data-item="1"])` to SCENARIO variable `isSecondTabSelected`
Then `${isSecondTabSelected}` is equal to `false`
When I save `aria-selected` attribute value of element located by `By.xpath(//a[@data-item="2"])` to SCENARIO variable `isThirdTabSelected`
Then `${isThirdTabSelected}` is equal to `true`
