Miremos este método con más detenimiento: 

```ruby
def volar_en_circulos!
   @energia = @energia - 10
end
```

Lo que estamos haciendo es cambiar la energía de `Pepita`: pasa de su valor actual, `@energia`, a ese valor menos `10`. Por ejemplo, pasa de `100` a `90`. ¿Significa esto que el `100` _se transforma_ en un `90` ? :frowning: :thought_balloon:

No, en absoluto. `@energia` es una referencia a un objeto, que inicialmente _apunta_  al objeto `100`:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616781381589.8.svg" alt="Múltiples referencias" width="300" height="auto">

Luego, la operación de asignación cambia ese apuntador, que pasa a referenciar al `90`:

<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-ruby-referencias/master/assets/objetos_4_1616781410661.9.svg" alt="Múltiples referencias" width="300" height="auto">

> Dada las siguientes definiciones:
>
>``` ruby
module Pepita
  @energia = 100
>
  def volar_en_circulos!
    @energia -= 10
  end
>
  def self.ciudad=(una_ciudad)
    @ciudad = una_ciudad
  end
end
>
module Iruya
end
```
> ¿Cuáles de las siguientes opciones son referencias?
