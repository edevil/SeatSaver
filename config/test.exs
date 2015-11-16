use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :seat_saver, SeatSaver.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :seat_saver, SeatSaver.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "phoenix1.0",
  database: "seat_saver_test",
  hostname: "azucker3.cloudapp.net",
  parameters: [tcp_keepalives_idle: "30"],
  pool: Ecto.Adapters.SQL.Sandbox