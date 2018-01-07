module Fito
  @peso = 70 
  @cantidadDeLlamadas = 0
  
  def self.comer(calorias)
     @peso += calorias * 0.001
     @cantidadDeLlamadas += 1
  end
  
  def self.peso
    @peso
  end
  
  def self.cantidadDeLlamadas
    @cantidadDeLlamadas
  end
end