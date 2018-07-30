Hasta ahora venimos insistiendo con que, en la programación en objetos, le enviamos mensajes a los objetos. ¡Y no mentimos!

Sucede que en realidad las cosas son un poco más complejas: no conocemos a los objetos directamente, sino a través de etiquetas llamadas _referencias_. Entonces cuando tenemos una declaración de variable como ésta...

```ruby
saludo = "hola"
```

...lo que estamos haciendo es _crear una referencia_ `saludo` que _apunta_ al objeto `"hola"`, que representamos mediante una flechita:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/images/unaReferencia_1515124264589.png" alt="Una Referencia" width="250" height="auto">

Y cuando tenemos... 

```ruby
saludo.upcase
```

...le estamos enviando el mensaje `upcase` al objeto `"hola"`, a través de la referencia `saludo`, que es una variable. 

> Veamos si se entiende hasta acá: creá una variable llamada `despedida` que apunte al objeto `"adiós"`, y luego enviale el mensaje `size()`.