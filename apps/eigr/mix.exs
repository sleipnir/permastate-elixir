defmodule Eigr.MixProject do
  use Mix.Project

  def project do
    [
      app: :eigr,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
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
      # Base deps
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:flow, "~> 1.0"},
      {:google_protos, "~> 0.1.0"},

      # Grpc deps
      {:grpc, "~> 0.5.0-beta.1"},
      # 2.9.0 fixes some important bugs, so it's better to use ~> 2.9.0
      {:cowlib, "~> 2.9.0", override: true}
    ]
  end

  defp description do
    """
    eigr support for Elixir
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :eigr,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Adriano Santos", "Weslei Juan Moser Pereira"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/eigr/Eigr-elixir"}
    ]
  end
end
