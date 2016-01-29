defmodule Clase2.Bank do
  use Clase2.Web, :model

  schema "banks" do
    field :name, :string
    field :phone, :string
    field :has_trust, :boolean, default: false

    timestamps
  end

  @required_fields ~w(name phone has_trust)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, min: 3, max: 20)
  end
end
