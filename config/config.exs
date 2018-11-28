# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_phx, HelloPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Snc9+YLgU7aAhjm62cZV8WN7ZPamtf+RRF35GpeDAmo0p9X+8X+MBGo99470hEAc",
  render_errors: [view: HelloPhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
