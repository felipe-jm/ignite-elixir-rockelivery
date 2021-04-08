<h1 align="center">
    <img width="120" alt="Ignite" src="https://res.cloudinary.com/dqcqifjms/image/upload/v1615216700/felipejung/ignite.png" />
    <br>
    Ignite - Elixir - Rockelivery
</h1>

<h4 align="center">
  A Phoenix application for deliveries management :pizza:
</h4>

## :information_source: How To Use

```bash
# Run server
mix phx.server
```

### Create user

> POST http://localhost:4000/api/users

Body:

```json
{
  "address": "Rua 35",
  "age": 21,
  "cep": "12332112",
  "cpf": "12332112312",
  "email": "felipe@gmail.com",
  "name": "felipe",
  "password": "123456"
}
```

### Update user

> PUT http://localhost:4000/api/users/:user_id

Body:

```json
{
  "address": "Rua 35",
  "age": 21,
  "cep": "12332112",
  "cpf": "12332112312",
  "email": "felipe@gmail.com",
  "name": "felipe atualizado",
  "password": "123456"
}
```

### Get user

> GET http://localhost:4000/api/users/:user_id

### Delete user

> DELETE http://localhost:4000/api/users/:user_id

## :heavy_check_mark: Running the tests

```bash
mix test
...........

Finished in 1.2 seconds
11 tests, 0 failures

Randomized with seed 74578
```

## :memo: License

This project is under the MIT license. See the [LICENSE](https://github.com/felipe-jm/ignite-elixir-rockelivery/blob/master/LICENSE) for more information.

---

Made with much :heart: and :muscle: by Felipe Jung :blush: <a href="https://www.linkedin.com/in/felipe-jung/">Talk to me!</a>
