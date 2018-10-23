# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elm_phoenix, ElmPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Tc7f0Wk/AusIWQ4G3nr/y0GpVDzqDs1tn2eLp68b1Ht+4p9dYzQXJc5hQC/LL1Vl",
  render_errors: [view: ElmPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
