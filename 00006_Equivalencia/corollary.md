:warning: ¡Cuidado! A diferencia de la identidad, que todos los objetos la entienden sin tener que hacer nada especial, la equivalencia es un poco más complicada. 

* Por defecto, si bien todos los objetos también la entienden, _delega_ en la identidad, así que muchas veces es lo mismo enviar uno u otro mensaje;
* y para que realmente compare a los objetos por su estado, vos tenés que implementar este método a mano en cada objeto que crees. Los siguientes objetos ya la implementan: 
  * Listas
  * Números
  * Strings
  * Booleanos