¿_Te acordás de Fito_? `Fito` también tiene una novia, `Melisa`. `Melisa` es nieta de `AbueloGervasio`. Cuando `Melisa` es feliz `Fito` es feliz: 

```ruby
module Fito
  @novio
   
  def self.novia=(un_novia)
    @novia = un_novia
  end
  
  def self.es_feliz_como_su_novia?
    novia.felicidad > 105
  end
end
```

> Escribí un programa que inicialice la `novia` de `Fito` y a la `nieta` de `AbueloGervasio` de forma que ambos conozcan al mismo objeto (`Melisa`). 
> 
> Luego, hacé que el **abuelo** alimente a su nieta 3 veces. ¿Qué pasará con `Fito`? ¿Se pondrá feliz?