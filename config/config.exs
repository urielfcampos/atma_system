# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :atma_system,
  ecto_repos: [AtmaSystem.Repo]

# Configures the endpoint
config :atma_system, AtmaSystemWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VbbJlV675WLBwqNzfn7OJmNw6gI8T6OxLAzk0uILPDkltYIoEJAfUmltqwV/WPpG",
  render_errors: [view: AtmaSystemWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AtmaSystem.PubSub,
  live_view: [signing_salt: "ZhFQxATY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
