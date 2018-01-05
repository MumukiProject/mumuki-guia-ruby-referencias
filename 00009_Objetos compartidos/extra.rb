module Fito
  @peso = 70 
  
  def self.comer(calorias)
     @peso += calorias * 0.5
  end
  
  def self.peso
    peso
  end
end

module Melisa
  @novio
   
  def self.novio(un_novio)
    @novio = un_novio
  end
  
  def self.novio_es_flaquito_como_le_gusta()
    novio.peso < 80
  end
end

module AbuelaClotilde
  @nieto
  @vecesAlimento = 0
  
  def self.alimentarNieto
    vecesAlimento += 1
    nieto.comer(2000)
    nieto.comer(1000)
  end
  
  def self.nieto(unNieto)
    @nieto = un_nieto
  end
  
  def self.nieto
    @nieto
  end
  
  def self.vecesAlimentado
    @vecesAlimento
  end
end