defmodule Adyen.MixProject do
  use Mix.Project

  def project do
    [
      app: :adyen,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.5"},
      {:jason, "~> 1.4"},
      {:poison, "~> 6.0"},
      {:oapi_generator, "~> 0.4", runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:styler, "~> 1.10", only: [:dev, :test], runtime: false}
    ]
  end
end
