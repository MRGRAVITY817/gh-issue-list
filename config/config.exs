import Config

config :issues, github_url: "https://api.github.com"

# this will purge the logs with level lower than `info`
config :logger,
  compile_time_purge_matching: [
    [level_lower_than: :info]
  ]
