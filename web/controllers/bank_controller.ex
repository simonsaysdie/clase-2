defmodule Clase2.BankController do
  use Clase2.Web, :controller

  alias Clase2.Bank
  alias Clase2.Repo
  alias Clase2.RegistrationController, as: Registration

  def register(conn, %{"bank" => bank_params}) do
  	changeset = Bank.changeset(%Bank{}, bank_params)   
    Registration.register(conn, {:bank, changeset})
  end

  
  def register(conn, _) do
  	changeset = Bank.changeset(%Bank{})
  	render(conn, "register.html", bank: changeset)
  end

end


