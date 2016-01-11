ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Lixir.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Lixir.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Lixir.Repo)

