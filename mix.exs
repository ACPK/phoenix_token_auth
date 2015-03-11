defmodule PhoenixTokenAuth.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_token_auth,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: applications(Mix.env)]
  end

  defp applications(:test), do: applications(:all) ++ [:blacksmith]
  defp applications(_all),  do: [:logger]

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
        {:cowboy, "~> 1.0.0"},
        {:phoenix, ">= 0.7.0"},
        {:ecto, "~> 0.9.0"},
        {:comeonin, "~> 0.2.4"},
        {:postgrex, ">= 0.6.0"},
        {:timex, "~> 0.13.0"},
        {:joken, "~> 0.8.1"},
        {:secure_random, "~> 0.1"},
        {:mailgun, "~> 0.0.2"},
        # DEV
        {:earmark, "~> 0.1", only: :dev},
        {:ex_doc, "~> 0.7", only: :dev},
        # TESTING
        {:mock, "~> 0.1.0", only: :test},
        {:blacksmith, git: "git://github.com/batate/blacksmith.git", only: :test},
    ]
  end
end