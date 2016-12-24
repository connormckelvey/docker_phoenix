use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :hello_world, HelloWorld.Endpoint,
  secret_key_base: "OjWGzHdzmo/tFWK5HV2URBJhqDmMFh0i//WBrxwQx4+3wTxrm7w1W0KqwPmiSdWQ"

# Configure your database
config :hello_world, HelloWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "hello_world_prod",
  pool_size: 20
