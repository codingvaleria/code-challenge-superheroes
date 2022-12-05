# README

# Superheroes

Superheroes API is a RESTful API that tracks heroes and their superpowers. It provides a way to create, retrieve, and delete heroes and their powers.

## Table of Contents

- [Requirements ](#setup-requiremnets)
- [Installation](#setup-installation)
- [Models](#models)
- [Routes](#endpointsroutes)
- [Contributions](#contributions)
- [Bugs && Fixes](#bugs--fixes--feature-request)
- [Author](#author)
- [License](#license)

## Setup Requirements

    - Git
    - Ruby 2.7.4
    - Ruby on Rails 7.0.4
    - Postman (for testing endpoints)

## Setup Installation

    - Clone repository
    - Run the following commands in the directory
        - bundle install
        - rails db:migrate
        - rails db:seed (optional)
        - bin/rails server

## Models

    - Hero (has many powers through hero_powers)
    - Power (has many heros through hero_powers)
    - HeroPower (belongs to a hero && belongs to a power)

## Endpoints/Routes

### GET /heroes

Returns a list of all heroes

```JSON
[
  {
    "id": 1,
    "name": "Orpha Kunde CPA",
    "super_name": "Supah Hercules"
  },
  {
    "id": 2,
    "name": "Londa Little",
    "super_name": "Bishop the Fated"
  }
```

]

### GET /heroes/:id

Returns JSON data about the hero if the hero exists

```
{
  "id": 1,
  "name": "Orpha Kunde CPA",
  "super_name": "Supah Hercules",
  "powers": [
    {
      "id": 1,
      "name": "Vitakinoasis",
      "description": "Fugit halal volupta."
    },
    {
      "id": 2,
      "name": "Immortality",
      "description": "Ducimus laboriosam sed. Aut."
    }
  ]
}
```

Otherwise, it returns

```
{
  "error": "Hero not found"
}
```

### GET /powers

Returns a list of powers

```
[
  {
    "id": 1,
    "name": "Vitakinoasis",
    "description": "Fugit halal volupta."
  },
  {
    "id": 2,
    "name": "Immortality",
    "description": "Ducimus laboriosam sed. Aut."
  },
  {
    "id": 3,
    "name": "Morality",
    "description": "Ducimu Lobitus gerohj huon "
  }
]
```

### GET /powers/:id

If the `Power` exists, return JSON data in the format below:

```
{
  "id": 1,
  "name": "Vitakinoasis",
  "description": "Fugit halal volupta."
}
```

If the `Power` exists, return JSON data in the format:

```
{
  "error": "Power not found"
}
```

### PATCH /powers/:id

This route updates an existing `Power`. It accepts an object with the following properties in the body of the request:

```
{
    "description": "Updated description"
}
```

If the `Power` exists, return JSON data in the format below:

```
{

  "id": 1,

  "name": "super strength",

  "description": "Updated description"

}
```

### POST /hero_powers

This route should create a new `HeroPower` associated with existing `Power` and `Hero`. It accepts an object with the following properties in the body of the request:

```
{

  "strength": "Average",

  "power_id": 1,

  "hero_id": 3

}
```

If the `HeroPower` is successfully created, the API will return a `Response` object with data related to the `Hero`:

```
{
    "id": 3,
    "name": "Fredia Roberts",
    "super_name": "Siren XI",
    "powers": [
        {
            "id": 1,
            "name": "Vitakinoasis",
            "description": "Fugit halal volupta."
        },
        {
            "id": 1,
            "name": "Vitakinoasis",
            "description": "Fugit halal volupta."
        },
        {
            "id": 1,
            "name": "Vitakinoasis",
            "description": "Fugit halal volupta."
        }
    ]
}
```

If the `HeroPower` is **not** successfully created, the API will return the following JSON data, along with the appropriate HTTP status code:

```
{

  "errors": ["validation errors"]

}
```

## Contributions

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## Bugs & Fixes / Feature request

In case you find a bug, kindly open an issue [here](https://github.com/codingvaleria/issues/new). Include your query and your expected results.

## Author

- [Valeria Bosibori](https://github.com/codingvaleria)
- Email: codingvaleria@gmail.com

## License

This project is under [MIT](LICENSE).

[Go Back to the Top](#superheroes)
