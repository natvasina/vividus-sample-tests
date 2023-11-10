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

Scenario: Checkout an item
When I click on element located by `xpath(//li[@id="topcartlink"]/a/span[@class="cart-label"])`
When I wait until element located by `xpath(//div/h1)` contains text `Shopping cart`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/cart`

Scenario: Accept terms of service
When I select `Canada` in dropdown located by `xpath(//select[@id="CountryId"])`
When I click on element located by `xpath(//input[@name="termsofservice"])`
When I click on element located by `xpath(//button[@name="checkout"])`
When I wait until element located by `xpath(//div/h1)` contains text `Checkout`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/onepagecheckout`

Scenario: Fill in Billing Address
When I select `Canada` in dropdown located by `xpath(//select[@id="BillingNewAddress_CountryId"])`
When I enter `City` in field located by `xpath(//input[@id="BillingNewAddress_City"])`
When I enter `Street` in field located by `xpath(//input[@id="BillingNewAddress_Address1"])`
When I enter `101010` in field located by `xpath(//input[@id="BillingNewAddress_ZipPostalCode"])`
When I enter `0632674486` in field located by `xpath(//input[@id="BillingNewAddress_PhoneNumber"])`
When I click on element located by `xpath(//div[@id="billing-buttons-container"]/input[@title="Continue"])`

Scenario: Fill in Shipping Address
When I wait until element located by `xpath(//li[@class="tab-section allow active"]/div[@class="step-title"])` has text matching `2.*`
When I click on element located by `xpath(//div[@id="shipping-buttons-container"]/input[@type="button"])`

Scenario: Fill in Shipping Method
When I wait until element located by `xpath(//li[@class="tab-section allow active"]/div[@class="step-title"])` has text matching `3.*`
When I click on element located by `xpath(//div[@id="shipping-method-buttons-container"]/input[@type="button"])`

Scenario: Fill in Payment Method
When I wait until element located by `xpath(//li[@class="tab-section allow active"]/div[@class="step-title"])` has text matching `4.*`
When I click on element located by `xpath(//div[@id="payment-method-buttons-container"]/input[@type="button"])`

Scenario: Payment Information
When I wait until element located by `xpath(//li[@class="tab-section allow active"]/div[@class="step-title"])` has text matching `5.*`
When I click on element located by `xpath(//div[@id="payment-info-buttons-container"]/input[@type="button"])`

Scenario: Confirm Order
When I wait until element located by `xpath(//li[@class="tab-section allow active"]/div[@class="step-title"])` has text matching `6.*`
When I scroll element located by `xpath(//div[@id="confirm-order-buttons-container"]/input[@type="button"])` into view
When I click on element located by `xpath(//div[@id="confirm-order-buttons-container"]/input[@type="button"])`

Scenario: Complete Order
When I wait until element located by `xpath(//div/h1)` contains text `Thank you`
Then `${current-page-url}` is equal to `https://demowebshop.tricentis.com/checkout/completed/`
