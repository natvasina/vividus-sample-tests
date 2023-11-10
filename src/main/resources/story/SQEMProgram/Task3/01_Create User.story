Scenario: Verify that allows creating a User
When I set request headers:
|name        |value           |
|accept      |application/json|
|Content-Type|application/json|
Given request body: {
  "id": 0,
  "username": "epamTester5",
  "firstName": "Epam",
  "lastName": "Tester",
  "email": "epamTester5@epam.com",
  "password": "epamTester",
  "phone": "0632674486",
  "userStatus": 0
}

When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user`
Then `${responseCode}` is equal to `200`
