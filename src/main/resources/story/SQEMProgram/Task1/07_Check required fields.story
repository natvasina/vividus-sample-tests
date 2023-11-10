Scenario: Open main page
When I open URL `https://www.epam.com/about/who-we-are/contact` in new tab

When I scroll element located by `cssSelector(.button-ui)` into view

When I click on element located by `cssSelector(.button-ui)`

When I change context to element located by `cssSelector(.form-constructor)`

When I find = `7` elements by `xpath(//div[@data-required="true"]/label[@class="form-component__label"])` and for each element do
|step|
|When I save text of context element to SCENARIO variable `isRequired`|
|Then `${isRequired}` matches `.*`|

When I change context to element located by `xpath((//div/label[@class="checkbox__label checkbox-custom-label checkbox__label-text"])[1])` in scope of current context
Then number of elements found by `xpath((//div/label[@class="checkbox__label checkbox-custom-label checkbox__label-text"])[1]/span)` is equal to `1`
When I save text of context element to SCENARIO variable `isRequired`
Then `${isRequired}` matches `.*`
