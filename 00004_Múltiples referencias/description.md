Supongamos que tenemos el siguiente programa: 

```ruby
otro_saludo = "buen día"
despedida = otro_saludo
```

Como vemos, estamos asignando `otro_saludo` a `despedida`. ¿Qué significa esto? ¿Acabamos de copiar el objeto `"buen día"`, o más bien le dimos una nueva etiqueta al mismo objeto? Dicho de otra forma: ¿apuntan ambas variables al mismo objeto? 

> ¡Averigualo vos mismo! **Declará las variables** `otro_saludo` y `despedida` como en el ejemplo de más arriba, y realizá las siguientes consultas:
>
> * `ム "buen día".equal? "buen día"`
> * `ム despedida.equal? "buen día"`
> * `ム otro_saludo.equal? otro_saludo`
> * `ム despedida.equal? otro_saludo` 
> 
> ¡Ahora sacá tus conclusiones! :smile: