Como vemos, los objetos son las "bolitas" y las referencias, las "flechitas". Pero, ¿cuál es la diferencia entre variable y referencia?

Sucede que hay muchos tipos de referencias, y una de ellas son las variables del programa. Pero, ¿no podíamos enviarles mensajes "directamente" al objeto? Por ejemplo, ¿dónde están las referencias en estos casos?: 

```ruby
#¿A qué referencia el envío upcase?
"ni hao".upcase

#¿Y a qué referencia el envío size?
saludo.upcase.size
```

¡Simple! Cuando enviamos mensajes a objetos literales como el `2`, el `true` u `"hola"`, o expresiones, estamos conociendo a esos objetos a través de _referencias implícitas_, que son **temporales** (sólo existen durante ese envío de mensajes) y **anónimas** (no tienen un nombre asociado).

```ruby
"ni hao".upcase 
        ^
        +-- Acá hay una referencia implícita al objeto "ni hao"

saludo.upcase.size
             ^
             +-- Y acá, otra referencia implícita a "HOLA"
```

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616780414430.3.svg" alt="Diagrama de objetos con el objeto 'hola' y una referencia <anónima> al mismo" width="300" height="auto">

Por eso, si luego te interesa hacer más cosas con ese objeto, tenés que crear una referencia explícita al mismo :wink:. Las referencias explícitas son las que vimos hasta ahora. Por ejemplo:

``` ruby
saludoEnChino = "ni hao"
```


> Probá las siguientes consultas en la consola y pensá en dónde hay referencias implícitas:
> 
> * `ム "ni hao".upcase`
> * `ム 4.abs.even?`
> * `ム (4 + 8).abs`