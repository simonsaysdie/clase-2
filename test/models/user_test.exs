defmodule Clase2.UserTest do
  use Clase2.ModelCase

  alias Clase2.User

  @valid_attrs %{age: 42, is_mexican: true, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
