# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello_world,
  ecto_repos: [HelloWorld.Repo]

# Configures the endpoint
config :hello_world, HelloWorld.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZRdYhuhN49YV2d/6phSulXFgnwo1ukzF1YN9EIUx4L/BOK6xg+oXCNdUAzfz38pu",
  render_errors: [view: HelloWorld.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloWorld.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
