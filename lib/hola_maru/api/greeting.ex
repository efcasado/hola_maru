defmodule HolaMaru.API.Greeting do
  use Maru.Router

  namespace :hola do
    route_param :name, type: String do
      desc "Returns a greeting for the provided user."

      get do
        name = params[:name]
        text(conn, "Hola #{name}!")
      end
    end
  end
end
