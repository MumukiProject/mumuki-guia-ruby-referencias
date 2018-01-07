module Fito
  @peso = 70 
  @cantidad_de_llamadas = 0
  
  def self.comer(calorias)
     @peso += calorias * 0.001
     @cantidad_de_llamadas += 1
  end
  
  def self.peso
    @peso
  end
  
  def self.cantidad_de_llamadas
    @cantidad_de_llamadas
  end
end