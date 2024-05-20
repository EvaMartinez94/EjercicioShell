#!/bin/bash
# Ejercicio 1:
# Hacer un script que adivine el PID del script, que nos informe en cada momento si es mayor o menor el número ingresado. Cuando acertemos el número el script termina informandonos los números de intentos
pid=$$ #así nos muestra el PID del script
intentos=0
echo Intenta adivinar el PID del script sabiendo que es un número de 4 digitos
# #Usamos while true para que siga ejecutandose hasta que paremos el bucle con break
 while true; do
     echo Introduce tu número
     read numero
 intentos=$((intentos + 1))

     if [[ numero -eq $pid ]] then
         echo ¡Felicidades, has adivinado el PID!
         echo Número de intentos: $intentos
         break
     elif [[ $numero -lt $pid ]] then#         
     echo El número ingresado es menor que el PID
     else
         echo El número ingreso es mayor que el PID
     fi
   done

# Hacer un script que:
# Mediante un input podamos agregar un archivo (nos de un mensaje de confirmación)
# Luego de 3 segundos de espera nos muestre la lista de archivos actual
# Nos pregunte si deseamos borrar un archivo
# De ser afirmativo, mediante un input podamos escribir por un lado el nombre del archivo, y por el otro  el formato
# nos informe si el archivo fue encontrado y que lo borre
# En el caso de que no queramos borrar ningun archivo, nos de un mensaje de “Ok, no borraremos ningún archivo”

echo Pongale nombre al archivo que quiere crear junto con la extensión
read archivo
touch $archivo
echo $archivo ha sido creado exitosamente.
echo A continuación le mostramos la lista de archivos
sleep 3
ls

while true; do
echo "¿Desea borrar algún archivo? (si/no)"
read respuesta

if [[ "$respuesta" == "si" ]]; then
echo Escriba el nombre del archivo que quiere borrar sin extensión
read nombreArchivo
echo Ahora escriba la extensión del archivo
read extensionArchivo
archivo="$nombreArchivo.$extensionArchivo"
    if [[ -f "$archivo" ]]; then
    # -f porque verifica que existe este archivo
    echo $archivo fue encontrado, procedemos a borrarlo
    rm $archivo
    echo $archivo ha sido borrado exitosamente 
    fi
    break

    elif [[ $respuesta == "no" ]]; then
    echo Ok, no borraremos ningún archivo.
    break
    fi
done
