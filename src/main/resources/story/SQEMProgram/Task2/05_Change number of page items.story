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

Scenario: Navigate to sub-group
When I click on element located by `xpath(//h2/a[@title="Show products in category Desktops"])`
When I wait until element located by `xpath(//div/h1)` contains text `Desktops`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/desktops`

Scenario: Save number of available items on the page
Then number of elements found by `xpath(//div[@class="item-box"])` is equal to `6`

Scenario: Change number of available items on the page
When I select `4` in dropdown located by `xpath(//select[@id="products-pagesize"])`
Then number of elements found by `xpath(//div[@class="item-box"])` is equal to `4`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/desktops?pagesize=4`
