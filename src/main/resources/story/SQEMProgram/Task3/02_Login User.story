Scenario: Verify that allows login a User
When I set request headers:
|name        |value           |
|accept      |application/json|

When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/login?username=epamTester5&password=epamTester`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.message` contains `logged in user session`
