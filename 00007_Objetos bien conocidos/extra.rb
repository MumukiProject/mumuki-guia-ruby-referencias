module Fito
  @felicidad = 100 
  @cantidad_de_llamadas = 0
  
  def self.comer!(calorias)
     @felicidad += calorias * 0.001
     @cantidad_de_llamadas += 1
  end
  
  def self.felicidad
    @felicidad
  end
  
  def self.cantidad_de_llamadas
    @cantidad_de_llamadas
  end
  
  def self.volve_a_tu_felicidad!
    @felicidad = 100
  end
  
end