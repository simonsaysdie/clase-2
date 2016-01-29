defmodule Clase2.User do
  use Clase2.Web, :model

  schema "users" do
    field :age, :integer
    field :name, :string
    field :is_mexican, :boolean, default: false

    timestamps
  end

  @required_fields ~w(age name)
  @optional_fields ~w(is_mexican)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
