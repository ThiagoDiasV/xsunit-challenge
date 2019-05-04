# X-SUNIT REST API

X-SUNIT REST API stores information about the survivors of the current alien invasion, in order to help us, X-SUNIT members, to survive this terrifying apocalypse.  

## Ruby version: 2.6.2p47
## Rails version: 5.2.3
## Database: SQLite3

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

* GET /api/version1/survivors/:id => Get a survivor

#### Example: 

```
=> GET /api/version1/survivors/340

=> {
    "status": "SUCCESS",
    "message": "Loaded survivor",
    "data": {
        "id": 340,
        "name": "Mrs. Charisse Olson",
        "age": 76,
        "gender": "Female",
        "latitude": -52.224134899789085,
        "longitude": -3.3885538289537465,
        "abducted": "yes",
        "created_at": "2019-05-03T15:37:30.178Z",
        "updated_at": "2019-05-03T15:37:30.178Z",
        "abduct_score": 3
    }
}
```

* PUT /api/version1/survivors/:id => Update the last location of a survivor

#### Example: 

```
=> PUT /api/version1/survivors/340
Headers = Key: Content-Type / Value: application/json
Body = {
	"latitude": "80.004125012",
	"longitude": "-50.04102410245"
}
=> {
    "status": "SUCCESS",
    "message": "Last location updated successfully",
    "data": {
        "id": 340,
        "latitude": 80.004125012,
        "longitude": -50.04102410245,
        "name": "Mrs. Charisse Olson",
        "age": 76,
        "gender": "Female",
        "abducted": "yes",
        "abduct_score": 1,
        "created_at": "2019-05-03T15:37:30.178Z",
        "updated_at": "2019-05-03T19:20:31.764Z"
    }
}
```

* PUT /api/version1/abduct/:id     => Abduct some survivor

#### Example: 

```
=> PUT /api/version1/abduct/351
Headers = Key: Content-Type / Value: application/json
Body = {
	"last_survivor_name_abduct_report": "Example name"
}

=> {
    "status": "SUCCESS",
    "message": "New abducted report :(",
    "data": {
        "last_survivor_name_abduct_report": "Example name",
        "id": 383,
        "name": "Marylouise Quitzon",
        "age": 29,
        "gender": "Male",
        "latitude": 39.53373816425997,
        "longitude": -24.703223775299904,
        "abducted": "no",
        "created_at": "2019-05-03T15:37:41.225Z",
        "updated_at": "2019-05-04T21:57:53.895Z",
        "abduct_score": 2
    }
}
```

* GET /api/version1/reports       => Get reports from survivors database

#### Example:

```
=> GET /api/version1/reports

=> {
    "status": "SUCCESS",
    "message": "X-Sunit Reports",
    "data": {
        "Abducted survivors (%)": 48.08,
        "Non-abducted survivors (%)": 51.92,
        "Survivor: Abducted?": {
            "Adrianna Lubowitz": "no",
            "Akilah Crona": "no",
            "Benito Collier": "no",
            "Beth Hyatt": "no",
            "Carlo Jast": "yes",
            "Carmel Rau": "no",
            "Cathi Shanahan": "no",
            "Cedrick Grady": "no",
            "Colton Jast": "no",
            "Dario Lesch": "no",
            "Dreama Toy": "yes",
            "Dung Mayer": "yes",
            "Emory Will": "yes",
            "Example name": "no",
            "Farrah Heidenreich III": "yes",
            "Felipa Heaney": "yes",
            "Flavia Leannon V": "no",
            "Forrest Mann": "no",
            "Fred Schneider": "yes",
            "Geraldine Boyle": "yes",
            "Gregg Beier": "no",
            "Gus Davis DVM": "no",
            "Iesha Olson MD": "yes",
            "Iraida Tillman": "no",
            "Jame Hansen": "yes",
            "Jame Okuneva DDS": "yes",
            "Janae Becker": "no",
            "Jed Sanford": "no",
            "Jospeh Homenick": "no",
            "Julieta Waelchi": "yes",
            "Katharine Lubowitz": "yes",
            "Kathlyn Trantow DVM": "yes",
            "Kendrick Steuber II": "yes",
            "Lawrence Greenholt": "no",
            "Leslie Hoeger": "no",
            "Lucile Gibson": "yes",
            "Mack Langosh": "yes",
            "Marylouise Quitzon": "no",
            "Mitzi Hoeger": "no",
            "Mr. Chester Schumm": "yes",
            "Mr. Herschel Klocko": "no",
            "Mr. Laureen Lakin": "no",
            "Mrs. Charisse Olson": "yes",
            "Mrs. Wally Heathcote": "no",
            "Ms. Shin Bergstrom": "yes",
            "Renea Sporer": "yes",
            "Rosaline Hills": "yes",
            "Sara Lubowitz": "yes",
            "Season Bednar": "no",
            "Season Johnston": "yes",
            "Tessie Schuppe": "no",
            "Walton Bayer": "yes"
        }
    }
}
```

* ...
