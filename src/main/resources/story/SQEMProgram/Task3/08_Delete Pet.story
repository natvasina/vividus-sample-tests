Scenario: Verify that allows deleting a Pet

When I set request headers:
|name        |value           |
|accept      |application/json|

When I execute HTTP DELETE request for resource with URL `https://petstore.swagger.io/v2/pet/290985`
Then `${responseCode}` is equal to `200`

When I set request headers:
|name        |value           |
|accept      |application/json|

When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/pet/290985`
Then `${responseCode}` is equal to `404`
Then JSON element value from `${response}` by JSON path `$.code` is equal to `1`
Then JSON element value from `${response}` by JSON path `$.type` is equal to `error`
Then JSON element value from `${response}` by JSON path `$.message` is equal to `Pet not found`
