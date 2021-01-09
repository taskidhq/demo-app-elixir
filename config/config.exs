# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :taskid_demo_app,
  ecto_repos: [TaskidDemoApp.Repo]

# Configures the endpoint
config :taskid_demo_app, TaskidDemoAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uGPRS46g/B5GC44+AdKmS1gQ1fhRygXt8xxTzF4EA0gi+cR1IWyGQwbtBArU9w2y",
  render_errors: [view: TaskidDemoAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TaskidDemoApp.PubSub,
  live_view: [signing_salt: "6T92TjZD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :taskid, applications: [:taskid_demo_app]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
