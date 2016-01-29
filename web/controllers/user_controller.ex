defmodule Clase2.UserController do
  use Clase2.Web, :controller

  alias Dennis.User

  def register(conn, %{"user" => _}) do
  	#changeset = User.changeset(%User{})
  	render(conn, "register.html")
  end

  def register(conn, _) do
  	
  end

end