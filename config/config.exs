# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :generals,
  ecto_repos: [Generals.Repo]

# Configures the endpoint
config :generals, GeneralsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qfPVX73l6E8xC12J0Urrez5U8Ahquk2nxAt/+RdP3danx5bPFi9ZTg2OyXqo6m4A",
  render_errors: [view: GeneralsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Generals.PubSub,
  live_view: [signing_salt: "o2/fy8tM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
