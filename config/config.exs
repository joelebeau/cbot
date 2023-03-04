import Config

config :nostrum,
  token: System.get_env("DISCORD_BOT_TOKEN"),
  gateway_intents: [:message_content]

  config :logger, :console,
    metadata: [:shard, :guild, :channel]
