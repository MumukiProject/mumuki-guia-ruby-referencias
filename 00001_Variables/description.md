Hasta ahora, en objetos, un programa es simplemente una secuencia de envíos de mensajes. Por ejemplo, éste es un programa que convierte en mayúsculas al string `"hola"`. 

```ruby
"hola".upcase //devuelve "HOLA"
```

Sin embargo, podemos hacer algo más: declarar variables. Por ejemplo, podemos declarar una variable `saludo`, inicializarla con `"hola"`, enviarle mensajes...

```ruby
saludo = "hola"
saludo.upcase //devuelve "HOLA"
```

...y esperar el mismo resultado que para el programa anterior.

> Veamos si queda claro: agregá al programa anterior una variable `saludo_formal`, inicializada con `"buen día"`