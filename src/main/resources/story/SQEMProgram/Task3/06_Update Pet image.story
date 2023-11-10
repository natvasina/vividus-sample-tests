Scenario: Verify that allows updating Pet’s image

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
    "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSP1hqYuZoN7FTuCgOpdPI2xnSPaUDakHEAhGNxVE6ogwE10MfMZaWk2f_GbJ2GLPRO"
  ],
  "tags": [
    {
      "id": 0,
      "name": "Maltipoo"
    }
  ],
  "status": "available"
}

When I execute HTTP PUT request for resource with URL `https://petstore.swagger.io/v2/pet`
Then `${responseCode}` is equal to `200`

When I set request headers:
|name        |value           |
|accept      |application/json|

When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/pet/290985`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.photoUrls[0]` is equal to `https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSP1hqYuZoN7FTuCgOpdPI2xnSPaUDakHEAhGNxVE6ogwE10MfMZaWk2f_GbJ2GLPRO`
