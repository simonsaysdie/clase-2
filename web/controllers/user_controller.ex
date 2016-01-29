defmodule Clase2.UserController do
  use Clase2.Web, :controller

  alias Clase2.User
  alias Clase2.Repo
  alias Clase2.RegistrationController, as: Registration

  def register(conn, %{"user" => user_params}) do
  	changeset = User.changeset(%User{}, user_params)

  	Registration.register(conn, {:user, changeset})
  end


  def register(conn, _) do
  	changeset = User.changeset(%User{})
  	render(conn, "register.html", user: changeset)
  end

end