module Juli
  @felicidad = 100
  
  def self.comer(calorias)
    @felicidad += calorias * 0.5
  end
  
  def self.felicidad
    @felicidad
  end
end

module Fito
  @amigo
   
  def self.amigo=(un_amigo)
    @amigo = un_amigo
  end
  
  def self.amigo
    @amigo
  end
  
  def self.es_feliz_como_su_amigo?
    @amigo.felicidad > 105
  end
end

module AbueloGervasio
  @nieto
  @veces_alimentado = 0
  
  def self.alimentar_nieto!
    @veces_alimentado += 1
    @nieto.comer(2000)
    @nieto.comer(1000)
  end
  
  def self.nieto=(un_nieto)
    @nieto = un_nieto
  end
  
  def self.nieto
    @nieto
  end
  
  def self.veces_alimentado
    @veces_alimentado
  end
end