# HolaMaru

A toy application to illustrate how to use [Maru](https://github.com/elixir-maru/)
and [Swagger](https://swagger.io/).

## Usage

```bash
mix deps.get
mix deps.compile
mix compile

iex -S mix

curl -X GET http://localhost:8080/hola/efcasado
# => Hola efcasado!%
```

The Swagger UI will be available in [localhost:8080/api-docs/](http://localhost:8080/api-docs/).
