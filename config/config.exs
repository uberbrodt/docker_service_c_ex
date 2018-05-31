# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :docker_service_c_ex,
  ecto_repos: [DockerServiceCEx.Repo]

# Configures the endpoint
config :docker_service_c_ex, DockerServiceCExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "L40bSkZaKA7N//tfjq3+ZXNm0FVc9tAkeJk51HL6eneK3IfntSpeWAbM1ehunTro",
  render_errors: [view: DockerServiceCExWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DockerServiceCEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
