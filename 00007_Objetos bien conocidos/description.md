¿Y qué hay de los objetos que veníamos declarando hasta ahora? Por ejemplo: 

```ruby
module fito
  @peso = 70
  
  def self.comer(calorias)
     @peso += calorias * 0.001
  end
  
  def self.peso
    @peso
  end
end
```

A objetos como `fito` se los conocen como _objetos bien conocidos_: cuando los declaramos no sólo describimos su comportamiento (`comer(calorias)` y `peso`) y estado (`@peso`), sino que además les damos un nombre o etiqueta a través de la cual podemos conocerlos. ¿Te suena?

¡Adiviná! Esas etiquetas también son referencias :tada:. Y son globales, es decir que cualquier objeto o programa puede utilizarla. 

> Veamos si va quedando claro. Declará un objeto `abuela_clotilde` que entienda un mensaje `alimentar_nieto`, que haga comer 2 veces a su nieto: primero con 2000 calorias, y luego con 1000 calorías; ¡el postre no podía faltar! :cake:.  
> 
> Además, la abuela tiene que tener un _setter_ `nieto(un_nieto)`, que permita configurar a su nieto. 