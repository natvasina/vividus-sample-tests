Scenario: Verify that allows add a new Pet
When I set request headers:
|name        |value           |
|accept      |application/json|
|Content-Type|application/json|

Given request body: {
  "id": 290985,
  "category": {
    "id": 0,
    "name": "puppy"
  },
  "name": "001_Chelsy",
  "photoUrls": [
    "https://www.dailypaws.com/thmb/0bUb7C5PjcwFTjuLFZTpFQjYeek=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/puppy-with-toy-1160123255-2000-31dde5625f49475dae229099d37eee30.jpg"
  ],
  "tags": [
    {
      "id": 0,
      "name": "Maltipoo"
    }
  ],
  "status": "available"
}

When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet`
Then `${responseCode}` is equal to `200`

When I set request headers:
|name        |value           |
|accept      |application/json|

When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/pet/290985`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.name` is equal to `001_Chelsy`
