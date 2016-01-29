defmodule Clase2.Repo.Migrations.CreateBank do
  use Ecto.Migration

  def change do
    create table(:banks) do
      add :name, :string
      add :phone, :string
      add :has_trust, :boolean, default: false

      timestamps
    end

  end
end
