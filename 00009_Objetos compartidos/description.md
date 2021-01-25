¿_Te acordás de Fito_? `Fito` también tiene un amigo, `Juli`. `Juli` es nieto de `AbueloGervasio`. Cuando `Juli` es feliz `Fito` es feliz: 

```ruby
module Fito
  @amigo
  
  def self.amigo=(un_amigo)
    @amigo = un_amigo
  end
  
  def self.es_feliz_como_su_amigo?
    @amigo.felicidad > 105
  end
end
```

> Escribí un programa que inicialice al `amigo` de `Fito` y al `nieto` de `AbueloGervasio` de forma que ambos conozcan al mismo objeto (`Juli`). 
> 
> Luego, hacé que el **abuelo** alimente a su nieto 3 veces. ¿Qué pasará con `Fito`? ¿Se pondrá feliz?