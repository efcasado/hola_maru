defmodule HolaMaru.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hola_maru,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:maru, github: "efcasado/maru", branch: "swagger-ui", override: true},
      {:maru_swagger, github: "efcasado/maru_swagger", branch: "swagger-ui"}
    ]
  end
end
