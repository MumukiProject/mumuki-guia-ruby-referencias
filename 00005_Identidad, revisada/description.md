El mensaje `equal?` nos dice si dos objetos son el mismo. Veamos qué pasó con las pruebas del ejercicio anterior: 

```ruby
otro_saludo = "buen día" # se crea la variable otro_saludo que referencia al objeto "buen día"
despedida = otro_saludo # se crea la variable despedida que, por asignarle la referencia otro_saludo, apunta al mismo objeto
```

```ruby
ム "buen día".equal? "buen día"
=> false
ム despedida.equal? "buen día"
=> false
```

En ambos casos el resultado fue `false`, dado que aquellos strings son objetos **distintos**, a pesar de que tengan los mismos caracteres. Cada vez que escribimos un string estamos creando un nuevo objeto. Sin embargo: 

```ruby
ム otro_saludo.equal? otro_saludo
=> true
ム despedida.equal? otro_saludo
=> true
```

¿Por qué? ¡Simple! Ambas referencias, `otro_saludo` y `despedida`, apuntan al mismo objeto. La moraleja es que declarar una variable significa agregar una nueva referencia al objeto existente, en lugar de copiarlo:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616780762290.5.svg" alt="Múltiples referencias" width="300" height="auto">

Distinto sería si hacemos:

``` ruby
otro_saludo = "buen día"
despedida = "buen día"
```

Lo cual da como resultado este ambiente:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616780791168.5_b.svg" alt="Múltiples referencias" width="300" height="auto">

> Veamos si se entiende, dadas las siguientes asignaciones:
>
``` ruby
persona = "Graciela"
hija_de_hector = "Graciela"
hermana_de_tito = persona
hija_de_elena = "Gracielita"
hermana_de_ana = hermana_de_tito
mama_de_gustavo = "hermana_de_ana"
tia_de_gonzalo = hija_de_hector
```
> Elegí cuáles de estas opciones referencian al mismo objeto que `persona`.