defmodule HolaMaru.API do
  use Maru.Router
  use MaruSwagger
  
  before do
    plug Plug.Static, at: "/api-docs", from: :hola_maru
  end
  
  swagger at: "/api-docs/swagger.json",
    pretty:     true,
    only:       [:dev],
    force_json: true
  
  get "/api-docs" do
    send_file(conn, 200, "priv/static/index.html")
  end
  
  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount HolaMaru.API.Greeting
  
  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
