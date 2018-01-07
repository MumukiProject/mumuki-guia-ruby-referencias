¿_Te acordás de Fito_? `Fito` también tiene una novia, que es feliz cuando `Fito` es feliz: 

```ruby
module Melisa
  @novio
   
  def self.novio=(un_novio)
    @novio = un_novio
  end
  
  def self.es_feliz_como_su_novio?
    novio.felicidad > 105
  end
end
```

> Escribí un programa que inicialice el `novio` de `Melisa` y al `nieto` de `AbuelaClotilde` de forma que ambas conozcan al mismo objeto (`Fito`). 
> 
> Luego, hacé que la **abuela** alimente a su nieto 3 veces. ¿Qué pasará con `Melisa`? ¿Se pondrá feliz?