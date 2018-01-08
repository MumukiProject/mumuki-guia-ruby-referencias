Repasemos lo recién visto: en un ambiente hay muchos objetos, pero en realidad no interactuamos con ellos directamente, sino a través de referencias, que son nombres o etiquetas que les damos a los objetos.

Para un objeto pueden existir múltiples nombres: cuando le damos uno nuevo, no estamos creando una copia del objeto ni modificándolo realmente, sino que estamos creando una nueva referencia que apunta al objeto. Así que ¡ojo!, si compartís un objeto con otros, y lo mutás, ¡todos los que tengan una referencia al mismo verán los cambios! 

Finalmente, en objetos, todo lo que se _parezca_ a una variable es una referencia, y hay de muchos tipos:

* variables de un programa
* variables locales de un método
* parámetros de un método
* atributos de un objeto
* y el nombre global de un objeto bien conocido.