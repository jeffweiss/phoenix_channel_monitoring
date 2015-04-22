use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_channel_monitoring, PhoenixChannelMonitoring.Endpoint,
  secret_key_base: "NGNDtXL8TEYCumiCEXrKF9OsLTeJgQaNhkqSuWvQmgjvI8pgPgRT2isFXSGRnx5l"

# Configure your database
config :phoenix_channel_monitoring, PhoenixChannelMonitoring.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_channel_monitoring_prod"
