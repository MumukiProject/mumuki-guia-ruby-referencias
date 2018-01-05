¿_Te acordás de Fito_? `Fito` también tiene una novia: 

```ruby
module Melisa
  @novio
   
  def self.novio(un_novio)
    @novio = un_novio
  end
  
  def self.novio_es_flaquito_como_le_gusta?()
    novio.peso < 80
  end
end
```

> Escribí un programa que inicialice el `novio` de `Melisa` y al `nieto` de `AbuelaClotilde` de forma que ambas conozcan al mismo objeto (`Fito`). 
> 
> Luego, hacé que la **abuela** alimente a su nieto 3 veces. ¿Qué pasará con `Melisa`? ¿Seguirá contenta con el peso de su novio?