defmodule Operacion do
	def suma(first, second) do
		first + second
	end

	def resta(first, second) do
		first - second
	end

	def division(first, second) do
		first / second
	end

	def multiplicacion(first, second) do
		first * second
	end

	defmodule Geometria do

	    def circulo(radio) do
	        3.1416 * (radio * radio)
		end

		def triangulo(first, second) do
			Operacion.multiplicacion(3, 4) / 2
		end


		def pentagono(lado) do
		    perimetro = lado * 5
		    apotema = Operacion.multiplicacion(perimetro, 2)
		    apotema / 2
		end
	end
end