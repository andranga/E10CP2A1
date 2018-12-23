module Formula
	def perimetro(lado1, lado2)
		(lado1.to_i * 2.0) + (lado2.to_i * 2.0)
	end

	def area(lado1, lado2)
		(lado1.to_i * lado2.to_i)
	end
end

class Rectangulo
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
  	puts "Soy un rectangulo y mis lados son: #{@base} y #{@altura}"
  end

  include Formula
end

class Cuadrado
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
  	puts "Soy un Cuadrado y mis lados son: #{@lado}"
  end

  include Formula
end

rec=Rectangulo.new(2,4)
cua=Cuadrado.new(5)

puts rec.area(rec.base, rec.altura)
puts cua.area(cua.lado, cua.lado)

puts rec.perimetro(rec.base, rec.altura)
puts cua.perimetro(cua.lado, cua.lado)
