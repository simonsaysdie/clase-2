defmodule Clase2.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :age, :integer
      add :name, :string
      add :is_mexican, :boolean, default: false

      timestamps
    end

  end
end
