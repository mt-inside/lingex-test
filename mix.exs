defmodule Foo.Mixfile do
  use Mix.Project

  def project do
    [app: :foo,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps,
     lingex_opts: lingex_opts
   ]
  end

  def lingex_opts do
    [ build_host: "build.erlangonxen.org:8080",
      username: "test",
      password: "test" ]
  end
  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

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
    [ { :lingex, github: "maximk/lingex" } ]
  end
end
