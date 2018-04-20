En el programa que acabás de escribir, que probablemente se vea parecido a esto...

```ruby
Fito.novia = Melisa
AbueloGervasio.nieta = Melisa

#Si antes de alimentar al nieto preguntáramos Fito.es_feliz_como_su_novia?, respondería false

3.times { AbueloGervasio.alimentar_nieta }
```

...`Melisa` es un **objeto compartido**: tanto el abuelo como su novio lo conocen. La consecuencia de esto es que cuando su abuelo le da de comer le aumenta la felicidad, y su novio ve los cambios: éste método que antes devolvía `false`, ahora devuelve `true`. 

Y esto tiene sentido: si un objeto _muta_ su estado, y lo expone de una u otra forma a través de mensajes, todos los que lo observen podrán ver el cambio. :blush: 