defmodule EspecPhoenix.Mixfile do
  use Mix.Project

  @version "0.1.6"

  def project do
    [app: :espec_phoenix,
     name: "ESpec Phoenix",
     version: @version,
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps,
     source_url: "https://github.com/antonmi/espec_phoenix",
     preferred_cli_env: [espec: :test],
     deps: deps]
  end

  def application do
    [applications: [:logger, :phoenix]]
  end

  defp description do
    """
      ESpec for Phoenix web framework.
    """
  end

  defp deps do
    [
      {:espec, "~> 0.8.0"},
      {:phoenix, ">= 0.0.0"},
      {:floki, "~> 0.4.1"}
    ]
  end

  defp package do
   [
     files: ~w(lib mix.exs README.md),
     contributors: ["Anton Mishchuk"],
     licenses: ["MIT"],
     links: %{"github" => "https://github.com/antonmi/espec_phoenix"}
   ]
 end
end
