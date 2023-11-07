# Starts the test runner
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Chatter.Repo, :manual)
{:ok, _} = Application.ensure_all_started(:ex_machina)
# ensures wallaby application is started
{:ok, _} = Application.ensure_all_started(:wallaby)
# gives wallaby a base url for resolving relative paths
Application.put_env(:wallaby, :base_url, ChatterWeb.Endpoint.url())
