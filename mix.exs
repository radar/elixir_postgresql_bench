defmodule Products.Mixfile do
  use Mix.Project

  def project do
    [
      app: :products,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Products.Bench, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:ecto, "~> 2.0"},
     {:postgrex, "~> 0.11"},
     {:benchfella, "~> 0.3.0"}]
  end
end
