defmodule Clase2.CardController do
  use Clase2.Web, :controller

  alias Clase2.Card
  alias Clase2.Repo
  alias Clase2.RegistrationController, as: Registration

  def register(conn, %{"card" => card_params}) do
  	changeset = Card.changeset(%Card{}, card_params)   
    Registration.register(conn, {:card, changeset})
  end

  
  def register(conn, _) do
  	changeset = Card.changeset(%Card{})
  	render(conn, "register.html", card: changeset)
  end

end