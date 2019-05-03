# X-SUNIT REST API
X-SUNIT REST API stores information about the survivors of the current alien invasion, in order to help we, X-SUNIT members, to survive this terrifying apocalypse.  

## Ruby version: 2.6.2p47

### API Endpoints:
* GET /api/version1/survivors     => List all survivors

#### Example: 
```

=> GET /api/version1/survivors

=> {
"status": "SUCCESS",
"message": "Loaded survivors",
"data": [
    {
        "id": 353,
        "name": "Adrianna Lubowitz",
        "age": 32,
        "gender": "Female",
        "latitude": 12.288588912540419,
        "longitude": -75.8991642879392,
        "abducted": "no",
        "created_at": "2019-05-03T15:37:33.547Z",
        "updated_at": "2019-05-03T15:37:33.547Z",
        "abduct_score": 1
    },
    {
        "id": 313,
        "name": "Akilah Crona",
        "age": 62,
        "gender": "Female",
        "latitude": -42.99190402702011,
        "longitude": -20.351572684392693,
        "abducted": "yes",
        "created_at": "2019-05-03T15:37:23.343Z",
        "updated_at": "2019-05-03T15:55:32.549Z",
        "abduct_score": 3
    },
    {
        "id": 335,
        "name": "Armand Fisher",
        "age": 75,
        "gender": "Male",
        "latitude": 28.168257658874424,
        "longitude": -81.7994997892891,
        "abducted": "no",
        "created_at": "2019-05-03T15:37:28.878Z",
        "updated_at": "2019-05-03T15:37:28.878Z",
        "abduct_score": 1
    }
]
}
```

* POST /api/version1/survivors    => Create a new survivor

#### Example:
```
=> POST /api/version1/survivors 
Headers = Key: Content-Type / Value: application/json
Body = {
	"name": "Example name",
	"age": "35",
	"gender": "Female",
	"latitude": "54.1238313155123",
	"longitude": "20.85123031213125",
	"abducted": "no",
	"abduct_score": "0"
}

=> {
    "status": "SUCCESS",
    "message": "Survivor created successfully",
    "data": {
        "id": 408,
        "name": "Example name",
        "age": 35,
        "gender": "Female",
        "latitude": 54.1238313155123,
        "longitude": 20.85123031213125,
        "abducted": "no",
        "created_at": "2019-05-03T18:47:15.817Z",
        "updated_at": "2019-05-03T18:47:15.817Z",
        "abduct_score": 0
    }
}
```
GET /api/version1/survivors/:id => Get a survivor\
PUT /api/version1/survivors/:id => Update the last location of a survivor\
PUT /api/version1/abduct        => Abduct some survivor\
GET /api/version1/reports       => Get reports from survivors database\

* ...
