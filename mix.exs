defmodule Nerve.MixProject do
  use Mix.Project

  def project do
    [
      app: :nerve,
      version: "0.0.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Nerve, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, github: "ninenines/cowboy", tag: "2.6.3"}
    ]
  end
end