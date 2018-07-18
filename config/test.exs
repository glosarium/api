use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :glosarium, GlosariumWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :glosarium, Glosarium.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "homestead",
  password: "secret",
  database: "glosarium_test",
  hostname: "192.168.10.10",
  pool: Ecto.Adapters.SQL.Sandbox
