defmodule HolaMaru.API do
  use Maru.Router
  use MaruSwagger
  
  swagger at: "/api-docs",
    pretty:     true,
    only:       [:dev],
    force_json: true
  
  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount HolaMaru.API.Greeting

  rescue_from :all, as: e do
    IO.puts "EEE #{inspect e}"
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
