Scenario: Open main page
When I open URL `https://demowebshop.tricentis.com/` in new tab

Scenario: Verify that allows login a User
When I click on element located by `xpath(//a[@class="ico-login"])`
When I wait until element located by `xpath(//div/h1)` contains text `Welcome, Please Sign In!`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/login`

When I enter `natvasina@gmail.com` in field located by `xpath(//input[@id="Email"])`
When I enter `epamTester` in field located by `xpath(//input[@id="Password"])`

When I click on element located by `xpath(//input[@class="button-1 login-button"])`
When I wait until element located by `xpath(//a[@class="ico-logout"])` contains text `Log out`

When I save text of element located by `By.xpath(//div[@class="header-links"]/ul/li/a[@class="account"])` to SCENARIO variable `userEmail`
Then `${userEmail}` is equal to `natvasina@gmail.com`

Scenario: Navigate to Computers
When I click on element located by `xpath(//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/computers"])`
When I wait until element located by `xpath(//div/h1)` contains text `Computers`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/computers`

Scenario: Check number of sub-groups
Then number of elements found by `xpath(//div[@class="item-box"])` is equal to `3`

Scenario: Check names of sub-groups
When I save text of element located by `By.xpath(//h2/a[@title="Show products in category Desktops"])` to SCENARIO variable `subGroup1`
Then `${subGroup1}` is equal to `Desktops`

When I save text of element located by `By.xpath(//h2/a[@title="Show products in category Notebooks"])` to SCENARIO variable `subGroup2`
Then `${subGroup2}` is equal to `Notebooks`

When I save text of element located by `By.xpath(//h2/a[@title="Show products in category Accessories"])` to SCENARIO variable `subGroup3`
Then `${subGroup3}` is equal to `Accessories`
