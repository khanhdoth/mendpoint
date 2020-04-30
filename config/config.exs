# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :mendpoint, MendpointWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "N9Arofdm7qMtGGOwINtE4gd+p7GayhNyVghI2+SEQh8rUDHHwbEvIz8TXzSZY0j4",
  render_errors: [view: MendpointWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mendpoint.PubSub,
  live_view: [signing_salt: "jno00a8M"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
