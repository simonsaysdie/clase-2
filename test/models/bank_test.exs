defmodule Clase2.BankTest do
  use Clase2.ModelCase

  alias Clase2.Bank

  @valid_attrs %{has_trust: true, name: "some content", phone: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Bank.changeset(%Bank{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Bank.changeset(%Bank{}, @invalid_attrs)
    refute changeset.valid?
  end
end
