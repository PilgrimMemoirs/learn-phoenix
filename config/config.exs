# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mgg,
  ecto_repos: [Mgg.Repo]

# Configures the endpoint
config :mgg, Mgg.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3lzQE/eQrARdh8GLb+lr8Swx+0VswL0nb6oJUUGPL+69MY0RamSN+jSEwC+q4ExE",
  render_errors: [view: Mgg.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mgg.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
