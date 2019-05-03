# README

# X-Sunit API Rest

## Ruby version: 2.6.2p47

### API Endpoints:\
    GET /api/version1/survivors     => List all survivors\
    ```
    => GET /api/version1/survivors\

    => {
    "status": "SUCCESS",
    "message": "Loaded survivors",
    "data": [
        {
            "id": 353,
            "name": "Adrianna Lubowitz",
            "age": 72,
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
            "age": 102,
            "gender": "Female",
            "latitude": -42.99190402702011,
            "longitude": -20.351572684392693,
            "abducted": "no",
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
            "abducted": "yes",
            "created_at": "2019-05-03T15:37:28.878Z",
            "updated_at": "2019-05-03T15:37:28.878Z",
            "abduct_score": 1
        }
    ]
    }
    ```
    POST /api/version1/survivors    => Create a new survivor\
    GET /api/version1/survivors/:id => Get a survivor\
    PUT /api/version1/survivors/:id => Update the last location of a survivor\
    PUT /api/version1/abduct        => Abduct some survivor\
    GET /api/version1/reports       => Get reports from survivors database\

* ...
