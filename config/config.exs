# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :the_mykolas,
  ecto_repos: [TheMykolas.Repo]

# Configures the endpoint
config :the_mykolas, TheMykolasWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XsyDG6AGm0wTeiSc/UBu2X+wesCzazN50U2xBuA9+mWvGTTiBJDnJOq28S027NJP",
  render_errors: [view: TheMykolasWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TheMykolas.PubSub,
  live_view: [signing_salt: "BLbJuYfY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
