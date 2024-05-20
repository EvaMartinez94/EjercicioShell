# Project Shell
## Variables 〰
#### Ejercicio 1
Definí una variable para cada dato que debía introducir en la frase.Luego usé el comando "echo" donde pude usar estos valores.
#### Ejercicio 2
En este caso, solicito al usuario que me responda ambas preguntas para luego poder mostrarle el mensaje que combine dichas respuestas.

## Parámetros ➰
#### Ejercicio 1 y ejercicio 2
En este caso, el usuario escribe una frase y a través de un "echo" le imprime el primer y tercer parámetro y le dice cuántos parámetros ha escrito.

## Condicionales ✔️
#### Ejercicio 1
Este script te muestra a través del comando "$(id) la información del usuario y a través de una condicional, si tiene permiso te muestra un mensaje y si no, te muestra otro.
#### Ejercicio 2
En este ejercicio pedimos al usuario a través de un "echo" que nos diga un número y después otro, en ambos he añadido una condición para validar que lo que nos dan es un número. Después de esto hemos añadido otra condicional para que verifique si los números dados son iguales, cual mayor y cual menor, a través de una cadena de condiciones usando "elif".
#### Ejercicio 3
En este script también le pido un número al usuario y también he añadido la validación de número. Y, a tráves de una condición, verifique si es divisible entre 2 usando la expresión aritmetica "$((n3%2)) -eq 0" que divide el número entre 2 y si el resto es igual a 0 significa que el número es divisible entre 2.

## Sustitución de comandos 🔄
#### Ejercicio 1
Lo primero que hago es solicitar los datos al usuario, como año de nacimiento, mes en formato númerico y día. Lo primero que hago es calcular la edad que tendría sin tener en cuenta mes y día, solo el año restandole el año actual (date +%Y) al año que me ha dicho el usuario $year. Después de esto añado condicionales para poder tener en cuenta mes y día. Si el mes del usuario es menor que el actual (-lt $mes) le da la edad (que deberia tener teniendo en cuenta el año) menos 1. La siguiente condicional tiene ne cuenta que el mes sea igual pero que el dia sea menor, entonces vuelve a hacer lo mismo. Y por último, si el mes y el día es igual, calcula la edad igual que al principio y te dice que es tu cumpleaños.

## Bucles 🌀
#### Ejercicio 1
Para realizar este ejercicio empezamos usando el comando $$ que es el que nos muestra el PID del script y lo almacena en la variable "PID". Después hacemos un bucle "while true" con lo que es infinito, solicito al usuario que pruebe con números para adivinar el PID y a través de una condicional te dice si es mayor, menos o si has acertado el número, en el momento que aciertas terminamos con un "break" para que el bucle termine. Por último, te dice el número de intentos sumandole 1 a la variable "intentos".
#### Ejercicio 2
En este ejercicio he comenzado diciendole al usuario que ponga nombre al archivo que quiere crear a través de un "echo" y con "touch" se crea dicho archivo. Con "ls" le abro todos los archivos que hay y le pregunto si quiere borrar alguno. Ahora añadimos una condicional donde si me dice que sí quiere borrar un archivo, le pregunto cual y lo borro con el comando rm. En el caso de que diga que no, no hacemos nada y cerramos la condicional con el comando "break". 



