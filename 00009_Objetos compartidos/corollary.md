En el programa que acabás de escribir, que probablemente se vea parecido a esto...

```ruby
Melisa.novio=(Fito)
AbuelaClotilde.nieto=(Fito)

#Si antes de alimentar al nieto preguntáramos Melisa.es_feliz_como_su_novio?, respondería false

3.times { AbuelaClotilde.alimentar_nieto }
```

...`Fito` es un **objeto compartido**: tanto la abuela como su novia lo conocen. La consecuencia de esto es que cuando su abuela le da de comer le aumenta la felicidad, y su novia ve los cambios: éste método que antes devolvía `false`, ahora devuelve `true`. 

Y esto tiene sentido: si un objeto _muta_ su estado, y lo expone de una u otra forma a través de mensajes, todos los que lo observen podrán ver el cambio. :blush: 