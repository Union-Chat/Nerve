defmodule Fiber.MixProject do
  use Mix.Project

  def project do
    [
      app: :fiber,
      version: "0.0.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_add_apps: [:mnesia]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Nerve.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, github: "ninenines/cowboy", tag: "2.6.3"},
      {:jason, "~> 1.1"},
      {:redix, ">= 0.0.0"},
      {:msgpax, "~> 2.2"},

      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev], runtime: false}
    ]
  end
end
