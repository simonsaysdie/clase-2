defmodule Resultados do

	def area_plaza(lado_pentagono, diametro_circulo) do
        radio_circulo = diametro_circulo / 2

		pentagonos = Operacion.Geometria.pentagono(lado_pentagono) * 2
		circulo = Operacion.Geometria.circulo(radio_circulo)
		pentagonos + circulo

	end


	def area_plazas(lado_pentagono, diametro_circulo)do
		
		area_plazas_dos = Resultados.area_plaza(lado_pentagono, diametro_circulo) * 2
		mitad_plaza = Resultados.area_plaza(lado_pentagono, diametro_circulo) / 2

		area_plazas_dos + mitad_plaza
	end

	def area_total_de_plazas(numero_plazas, lado_pentagono, diametro_circulo) do
	  Resultados.area_plaza(lado_pentagono, diametro_circulo) * numero_plazas
	 	
	end 


end