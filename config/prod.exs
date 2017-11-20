use Mix.Config

config :teller, TellerWeb.Endpoint,
#  load_from_system_env: true,
  http: [ port: 4444 ],
  url: [host: "localhost", port: 4444],
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true,
  root: ".",
  version: Application.spec(:myapp, :vsn)

# Do not print debug messages in production
config :logger, level: :info

import_config "prod.secret.exs"
