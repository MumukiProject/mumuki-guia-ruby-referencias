module Fito
  @felicidad = 100
  
  def self.comer(calorias)
    @felicidad += calorias * 0.5
  end
  
  def self.felicidad
    @felicidad
  end
end

module Melisa
  @novio
   
  def self.novio=(un_novio)
    @novio = un_novio
  end
  
  def self.novio
    @novio
  end
  
  def self.es_feliz_como_su_novio?()
    novio.felicidad > 105
  end
end

module AbuelaClotilde
  @nieto
  @veces_alimentado = 0
  
  def self.alimentar_nieto
    veces_alimentado += 1
    nieto.comer(2000)
    nieto.comer(1000)
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