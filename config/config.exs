# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_demo, LiveviewDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tM9XwNkYqCNoqX6BpVnV/aysk74xmmTId9I1rgeCu+hnB0Sw7RtuNtaGaFOhgbke",
  render_errors: [view: LiveviewDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewDemo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [ signing_salt: "WNwXl1QSJLw9MnJGoZoOdP9R4xBG4kCi" ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Use .leex as LiveView template engine in Phoenix
config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
