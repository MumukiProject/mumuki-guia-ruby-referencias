module Juli
  @felicidad = 100
  
  def self.comer!(calorias)
    @felicidad += calorias * 0.5
  end
  
  def self.felicidad
    @felicidad
  end
end

module Fito
  #<elipsis-for-student@
  def self.amigo
    @amigo
  end
  #@elipsis-for-student>
  
  def self.amigo=(un_amigo)
    @amigo = un_amigo
  end
  
  def self.es_feliz_como_su_amigo?
    @amigo.felicidad > 105
  end
end

module AbueloGervasio
  #<elipsis-for-student@
  @veces_alimentado = 0
  
  def self.nieto
    @nieto
  end
  
  def self.veces_alimentado
    @veces_alimentado
  end
  #@elipsis-for-student>
  
  def self.nieto=(un_nieto)
    @nieto = un_nieto
  end
  
  def self.alimentar_nieto!
    #<elipsis-for-student@
    @veces_alimentado += 1
    #@elipsis-for-student>
    @nieto.comer!(2000)
    @nieto.comer!(1000)
  end
end