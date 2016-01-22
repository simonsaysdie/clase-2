defmodule Clase2.PageController do
  use Clase2.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def plazas(conn, _params) do

  	text conn, "Mis plazas son: #{Resultados.area_total_de_plazas(6, 8, 10)}"
  end
end
