¿Y qué hay de los objetos que veníamos definiendo hasta ahora? Por ejemplo a `Fito`, le aumenta la felicidad cuando come: 

```ruby
module Fito
  @felicidad = 100
  
  def self.comer!(calorias)
     @felicidad += calorias * 0.001
  end
  
  def self.felicidad
    @felicidad
  end
end
```

A objetos como `Fito` se los conocen como _objetos bien conocidos_: cuando los definimos no sólo describimos su comportamiento (`comer!(calorias)` y `felicidad`) y estado (`@felicidad`), sino que además les damos un nombre o etiqueta a través de la cual podemos conocerlos. ¿Te suena?

¡Adiviná! Esas etiquetas también son referencias :tada:. Y son globales, es decir que cualquier objeto o **programa** puede utilizarla.

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616781024782.7.svg" alt="Diagrama de objetos con un objeto que tiene una referencia global 'Fito'. Ese objeto apunta a un objeto cien con la referencia @felicidad" width="300" height="auto">

> Veamos si va quedando claro. Definí un objeto `AbuelaClotilde` que entienda un mensaje `alimentar_nieto!`, que haga `comer!` 2 veces a `Fito`: primero con 2000 calorias, y luego con 1000 calorías; ¡el postre no podía faltar! :cake:.  
