module Melisa
  @felicidad = 100
  
  def self.comer(calorias)
    @felicidad += calorias * 0.5
  end
  
  def self.felicidad
    @felicidad
  end
end

module Fito
  @novia
   
  def self.novia=(un_novia)
    @novia = un_novia
  end
  
  def self.novia
    @novia
  end
  
  def self.es_feliz_como_su_novia?
    @novia.felicidad > 105
  end
end

module AbueloGervasio
  @nieta
  @veces_alimentada = 0
  
  def self.alimentar_nieta
    @veces_alimentado += 1
    @nieta.comer(2000)
    @nieta.comer(1000)
  end
  
  def self.nieta=(un_nieta)
    @nieta = un_nieta
  end
  
  def self.nieta
    @nieta
  end
  
  def self.veces_alimentada
    @veces_alimentada
  end
end