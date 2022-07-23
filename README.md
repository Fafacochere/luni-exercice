# luni-exercice
Welcome to my version of the technical test for Luni. Here is the instruction.

## Prerequisite

- Git
- Docker
- A terminal app

## Instructions

First open your terminal app and type:

``` sh
cd my-folder
git clone https://github.com/Fafacochere/luni-exercice.git
cd luni-exercice
git clone https://github.com/Fafacochere/luni-api.git
```

After you can launch this project with `docker-compose up -d`.

Once it's done, you can access to the API via `http://localhost:8000`.  For access to the endpoint `/api/v1/data`, you have to add your idfv (even if it's a fake one) in your request headers like 
``` JSON
{
    "headers": {
      "idfv": "ABCDEFGHIJ1334221",
      ...
    },
}
```

Normally, you have to get a response like this
```JSON
{
    "user": {
        "id": 1,
        "token": "QUJDREVGR0hJSjEzMzQyMjExNjU4NTY0MjE5NzU5"
    },
    "data": {
        "programs": [
            ...
        ]
    }
}
```

Once your user token is reated, you have insert it in your Authorization header
``` JSON
{
    "headers": {
      "idfv": "ABCDEFGHIJ1334221",
      "Authorization": "QUJDREVGR0hJSjEzMzQyMjExNjU4NTY0MjE5NzU5"
    },
}
```

If your token expires, you can refresh it by access to the endpoint `PUT /api/v1/user/:id` with your user id and your idfv in your headers