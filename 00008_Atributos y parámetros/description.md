Además de los que ya vimos, hay más tipos de referencias: los atributos. 

Por ejemplo, si la golondrina `Pepita` conoce siempre su ciudad actual...

```ruby
module Pepita
  @ciudad
   
  def self.ciudad=(una_ciudad)
      @ciudad = una_ciudad
  end
end
```

Y en algún momento esta pasa a ser `Iruya`, el diagrama de objetos será el siguiente: 

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/images/atributos_1515177167634.png" alt="Atributos" width="350" height="auto">

Nuevamente, acá vemos otro caso de múltiples referencias: el objeto que representa a la ciudad de [Iruya](https://es.wikipedia.org/wiki/Iruya) es globalmente conocido como `Iruya`, y también conocido por `Pepita` como `ciudad`.

> Escribí un programa que inicialice la `ciudad` de `Pepita` de forma que apunte a `Iruya`. Y pensá: ¿cuántas referencias a `Iruya` hay en este programa? :thought_balloon: