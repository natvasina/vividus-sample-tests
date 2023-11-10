Scenario: Verify that allows creating list of Users
When I set request headers:
|name        |value           |
|accept      |application/json|
|Content-Type|application/json|
Given request body:
[
  {
    "id": 0,
    "username": "epamTester10",
    "firstName": "Epam",
    "lastName": "Tester",
    "email": "epam_tester10@epam.com",
    "password": "epamTester",
    "phone": "0632674486",
    "userStatus": 0
  },
  {
    "id": 0,
    "username": "epamTester20",
    "firstName": "Epam",
    "lastName": "Tester",
    "email": "epam_tester20@epam.com",
    "password": "epamTester",
    "phone": "0632674486",
    "userStatus": 0
  }
]

When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user/createWithList`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.message` is equal to `ok`
