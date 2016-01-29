defmodule Clase2.RegistrationController do
  use Clase2.Web, :controller

  alias Clase2.Bank
  alias Clase2.User
  alias Clase2.Repo

  def register(conn, {who, changeset}) do
  	if changeset.valid? do  
	  write_registry(conn, {who, changeset})
  	else
  	  send_registry_error(conn, {who, changeset})
  	end
  end

  def send_registry_error(conn, {:bank, changeset}) do
  	conn
    |> put_flash(:error, "Please insert valid data")
  	|> render("register.html", bank: changeset)
  end

  def send_registry_error(conn, {:user, changeset}) do
  	conn
    |> put_flash(:error, "Please insert valid data")
  	|> render("register.html", user: changeset)
  end

  def write_registry(conn, {:bank, changeset}) do
  	case Repo.insert(changeset) do
  	  {:ok, bank} ->
  	    redirect conn, to: "/plazas"
  	  {:error, bank} ->
  	    send_registry_error(conn, {:bank, changeset})
  	  :else ->
  	    render(conn, "register.html", bank: changeset)
    end
  end

  def write_registry(conn, {:user, changeset}) do
  	case Repo.insert(changeset) do
  	  {:ok, user} ->
  	    redirect conn, to: "/plazas"
  	  {:error, user} ->
  	    send_registry_error(conn, {:user, changeset})
  	  :else ->
  	    render(conn, "register.html", user: changeset)
    end
  end

end
