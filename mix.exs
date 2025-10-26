defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.1.0",
      name: "Issues",
      source: "git@github.com:LameckMeshack/issues-test.git",
      elixir: "~> 1.16",
      escript: escript_config(),
      start_permanent: Mix.env() == :prod,
      elixirc_options: elixirc_options(Mix.env()),
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
      {:httpoison, "~> 2.0"},
      {:poison, "~> 6.0"},
      {:ex_doc, "~> 0.36.1"},
      {:earmark, "~> 1.4.48"}
    ]
  end

  defp elixirc_options(_), do: [warnings_as_errors: true]

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
