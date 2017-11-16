defmodule RocketseatLiveGit.Mixfile do
  use Mix.Project

  def project do
    [
      app: :rocketseat_live_git,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [
        :logger
      ]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13"},
      {:distillery, "~> 1.5", only: :prod}
    ]
  end
end
