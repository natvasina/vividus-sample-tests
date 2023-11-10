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
