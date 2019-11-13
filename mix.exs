defmodule JasonTupleList.MixProject do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :jason_tuple_list,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      package: package(),
      description: description(),
      docs: docs(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    Jason companion for producing maps with control over key ordering
    """
  end

  defp package do
    [
      maintainers: [ "Dan Janowski" ],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/danj3/jason_tuple_list"},
      files: ["lib/*.ex", "mix.exs", "README.md","LICENSE"]
    ]
  end

  defp docs do
    [
      main: "readme", # The main page in the docs
      name: "JasonTupleList",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/jason_tuple_list",
      source_url: "https://github.com/danj3/jason_tuple_list",
      extras: ["README.md"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :jason, git: "https://github.com/michalmuskala/jason", branch: "master", override: true },
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
