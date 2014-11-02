defmodule Diver.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :diver,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,
     package: [
       contributors: ["Chris Molozian"],
       licenses: ["Apache 2.0"],
       links: %{github: "https://github.com/novabyte/diver",
                docs: "http://hexdocs.pm/diver/"}],
     description: """
     A HBase driver for Erlang/Elixir which uses jinterface and the Asynchbase Java client
     to query the database.
     """]
  end

  def application do
    [applications: [:logger],
     env: [zk: [quorum_spec: "localhost", base_path: "/hbase"]],
     mod: {Diver, []}]
  end

  defp deps do
    []
  end
end