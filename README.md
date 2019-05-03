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
    "status": "SUCCESS",
    "message": "The survivor was abducted :(",
    "data": {
        "id": 351,
        "abduct_score": 3,
        "name": "Reynaldo Yundt",
        "age": 51,
        "gender": "Male",
        "latitude": 46.204471894352764,
        "longitude": 118.54037780829071,
        "abducted": "yes",
        "created_at": "2019-05-03T15:37:33.033Z",
        "updated_at": "2019-05-03T19:23:41.925Z"
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
        "Abducted survivors (%)": 49.5,
        "Non-abducted survivors (%)": 50.5,
        "Survivor: Abducted?": {
            "Adrianna Lubowitz": "no",
            "Akilah Crona": "no",
            "Armand Fisher": "yes",
            "Benedict Howe": "yes",
            "Benito Collier": "no",
            "Beth Hyatt": "no",
            "Carlo Jast": "yes",
            "Carmel Rau": "no",
            "Cathi Shanahan": "no",
            "Cedrick Grady": "no",
            "Colton Jast": "no",
            "Danita Reilly": "yes",
            "Dario Lesch": "no",
            "Darrell Schmeler": "no",
            "Donovan Bins": "yes",
            "Dorene Doyle": "no",
            "Douglas Cassin II": "no",
            "Dr. Adrian Runolfsson": "no",
            "Dr. Vaughn Klocko": "no",
            "Dreama Toy": "yes",
            "Dung Mayer": "yes",
            "Elly Wyman": "yes",
            "Emory Will": "yes",
            "Evette Cronin": "yes",
            "Example name": "no",
            "Farrah Heidenreich III": "yes",
            "Felipa Heaney": "yes",
            "Flavia Leannon V": "no",
            "Forrest Mann": "no",
            "Fred Schneider": "yes",
            "Garret Frami": "yes",
            "Geraldine Boyle": "yes",
            "Gladys Trantow": "no",
            "Gregg Beier": "no",
            "Gregg O'Conner": "yes",
            "Gus Davis DVM": "no",
            "Gwyn Barton MD": "no",
            "Halley Cronin": "no",
            "Herman Jacobi I": "no",
            "Hyman Bayer": "no",
            "Iesha Olson MD": "yes",
            "Iraida Tillman": "no",
            "Irving Koepp": "yes",
            "Jame Hansen": "yes",
            "Jame Okuneva DDS": "yes",
            "Jamika O'Kon": "no",
            "Janae Becker": "no",
            "Janette Witting": "no",
            "Jed Sanford": "no",
            "Jospeh Homenick": "no",
            "Julieta Waelchi": "yes",
            "Katharine Lubowitz": "yes",
            "Kathlyn Trantow DVM": "yes",
            "Kayla Zemlak": "yes",
            "Kendrick Steuber II": "yes",
            "Kirby Lemke": "yes",
            "Lawrence Greenholt": "no",
            "Leslie Hoeger": "no",
            "Lucile Gibson": "yes",
            "Luisa Kiehn": "no",
            "Lurlene Emmerich": "yes",
            "Mack Langosh": "yes",
            "Marylou Jenkins": "no",
            "Marylouise Quitzon": "no",
            "Mauro Reinger": "no",
            "Miss Leonarda Stoltenberg": "yes",
            "Miss Selma Kuhic": "yes",
            "Mitzi Hoeger": "no",
            "Monte Hamill": "yes",
            "Mr. Chester Schumm": "yes",
            "Mr. Herschel Klocko": "no",
            "Mr. Laureen Lakin": "no",
            "Mrs. Antonia Miller": "no",
            "Mrs. Charisse Olson": "yes",
            "Mrs. Roland VonRueden": "yes",
            "Mrs. Sam Lebsack": "yes",
            "Mrs. Wally Heathcote": "no",
            "Ms. Caleb Metz": "no",
            "Ms. Chadwick Runolfsdottir": "yes",
            "Ms. Robby Stracke": "no",
            "Ms. Shin Bergstrom": "yes",
            "Pat Jast": "yes",
            "Pedro Hilpert": "yes",
            "Renea Sporer": "yes",
            "Reynaldo Yundt": "yes",
            "Ricky Cremin": "yes",
            "Ronald Sporer Sr.": "yes",
            "Rosaline Hills": "yes",
            "Roxie Schroeder II": "no",
            "Sara Lubowitz": "yes",
            "Season Bednar": "no",
            "Season Johnston": "yes",
            "Sherwood Hammes Sr.": "yes",
            "Silas Littel II": "no",
            "Tegan Osinski": "no",
            "Terrance Vandervort": "yes",
            "Tessie Schuppe": "no",
            "Walton Bayer": "yes",
            "Whitney Hayes III": "no",
            "Wilbert McGlynn": "no",
            "Winfred Orn": "no"
        }
    }
}
```

* ...
