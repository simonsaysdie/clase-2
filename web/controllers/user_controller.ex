defmodule Clase2.UserController do
  use Clase2.Web, :controller

  alias Clase2.User
  alias Clase2.Repo

  def register(conn, %{"user" => user_params}) do
  	changeset = User.changeset(%User{}, user_params)

  	if changeset.valid? do  
	  write_registry(conn, changeset)
  	else
  	  send_registry_error(conn, changeset)
  	end
  end

  defp send_registry_error(conn, changeset) do
  	conn
    |> put_flash(:error, "Please insert valid data")
  	|> render("register.html", user: changeset)
  end

  defp write_registry(conn, changeset) do
  	case Repo.insert(changeset) do
  	  {:ok, user} ->
  	    redirect conn, to: "/plazas"
  	  {:error, user} ->
  	    send_registry_error(conn, changeset)
  	  :else ->
  	    render(conn, "register.html", user: changeset)
    end
  end

  def register(conn, _) do
  	changeset = User.changeset(%User{})
  	render(conn, "register.html", user: changeset)
  end

end