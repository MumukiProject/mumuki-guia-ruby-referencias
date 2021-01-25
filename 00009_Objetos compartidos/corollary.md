En el programa que acabás de escribir, que probablemente se vea parecido a esto...

```ruby
Fito.amigo = Juli
AbueloGervasio.nieto = Juli

#Si antes de alimentar al nieto preguntáramos Fito.es_feliz_como_su_amigo?, respondería false

3.times { AbueloGervasio.alimentar_nieto }
```

...`Juli` es un **objeto compartido**: tanto el abuelo como su amigo lo conocen. La consecuencia de esto es que cuando su abuelo le da de comer le aumenta la felicidad, y su amigo ve los cambios: éste método que antes devolvía `false`, ahora devuelve `true`. 

Y esto tiene sentido: si un objeto _muta_ su estado, y lo expone de una u otra forma a través de mensajes, todos los que lo observen podrán ver el cambio. :blush: 