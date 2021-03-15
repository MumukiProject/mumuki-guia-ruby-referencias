module Pepita
  @energia = 100
  
  def self.volar_en_circulos!
    @energia -= 10
  end
   
  def self.ciudad=(una_ciudad)
    @ciudad = una_ciudad
  end
  
  def self.ciudad
    @ciudad
  end
end

module Iruya
end