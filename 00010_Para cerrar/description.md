Antes de terminar nos topamos con un último problema: `Jor` se encarga de la cocina en un restaurante y le encanta `picantear!` su plato del día. Sin embargo, `Luchi`, su ayudante, no comparte ese gusto y por suerte está ahí para `suavizar!` las distintas comidas del establecimiento. 

* Cada vez que `Jor` picantea el plato del día le agrega 5 ajíes.
* ¡Hoy hay `Fideos`! :drooling_face: Decimos que los `Fideos` están picantes si el plato tiene más de 2 ajíes. Inicialmente no tiene ajíes.
* Cuando descartamos la salsa de los `Fideos` dejan de tener ajíes. 
* `Luchi` necesita saber qué plato suavizar y cuántos ajíes sacarle para hacerlo. Si el plato tiene más de 10 ajíes, directamente descarta la salsa para poder usarla en otra comida. 

> Definí los objetos necesarios para que podamos hacer lo siguiente: 
> 
> ```ruby
> #Configurar el plato del día de Jor
> Jor.plato_del_dia = Fideos
> #Que Jor le agregue picante
> Jor.picantear!
> #Preguntar si está picante
> Fideos.picantes?
> #Que Luchi suavice el plato que reciba como argumento
> Luchi.suavizar! Fideos, 3
> #Descartar la salsa
> Fideos.descartar_la_salsa!
> ```