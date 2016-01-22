ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Clase2.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Clase2.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Clase2.Repo)

