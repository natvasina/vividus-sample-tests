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
When I click on element located by `xpath(//h2/a[@title="Show products in category Accessories"])`
When I wait until element located by `xpath(//div/h1)` contains text `Accessories`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/accessories`

Scenario: Add item to the cart
When I click on element located by `xpath((//input[@value="Add to cart"])[3])`
When I wait until element located by `xpath(//div[@class="bar-notification success"])` appears
When I save text of element located by `By.xpath(//a[@class="ico-cart"]/span[@class="cart-qty"])` to SCENARIO variable `cartQuantity`
Then `${cartQuantity}` is equal to `(1)`

Scenario: Remove item from the cart
When I click on element located by `xpath(//li[@id="topcartlink"]/a/span[@class="cart-label"])`
When I wait until element located by `xpath(//div/h1)` contains text `Shopping cart`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/cart`

When I click on element located by `xpath(//input[@name="removefromcart"])`
When I click on element located by `xpath(//input[@name="updatecart"])`
Then text `Your Shopping Cart is empty!` exists
