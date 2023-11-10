Scenario: Open main page
When I open URL `https://demowebshop.tricentis.com/` in new tab

Scenario: Verify that allows register a User
When I click on element located by `xpath(//a[@class="ico-register"])`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/register`
Then text `Register` exists

When I enter `Nataliya` in field located by `xpath(//input[@id="FirstName"])`
When I enter `Vasina` in field located by `xpath(//input[@id="LastName"])`
When I enter `natvasina@gmail.com` in field located by `xpath(//input[@id="Email"])`
When I enter `epamTester` in field located by `xpath(//input[@id="Password"])`
When I enter `epamTester` in field located by `xpath(//input[@id="ConfirmPassword"])`

When I click on element located by `xpath(//input[@id="register-button"])`
When I wait until element located by `xpath(//div[@class="result"])` contains text `Your registration completed`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/registerresult/1`
