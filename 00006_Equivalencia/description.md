Entonces, ¿qué pasa si lo que quiero es comparar los objetos no por su identidad, sino por que **representen la misma cosa**?

Pensemos un caso concreto. ¿Hay forma de saber si dos strings representan la **misma secuencia de carateres** más allá de que **no sean el mismo objeto**? ¡Por supuesto que la hay! Y no debería sorprendernos a esta altura que se trate de otro mensaje: 

```ruby
ム "hola" == "hola"
=> true
ム "hola" == "adiós"
=> false
ム "hola".equal? "hola"
=> false
```

El mensaje `==` nos permite comparar dos objetos por _equivalencia_; lo cual se da típicamente cuando los objetos tienen el mismo estado. Y como vemos, puede devolver `true`, aún cuando los dos objetos no sean _el mismo_. 

> Veamos si se entiende: declará una variable `objetos_equivalentes`, que referencie a una lista conformada por tres referencias **distintas** que apunten a objetos equivalentes entre sí, pero no idénticos. 
