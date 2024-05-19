#!/bin/bash
# Ejercicio 1:
# Hacer un script que adivine el PID del script, que nos informe en cada momento si es mayor o menor el número ingresado. Cuando acertemos el número el script termina informandonos los números de intentos
pid=$$ #así nos muestra el PID del script
intentos=0
echo Intenta adivinar el PID del script sabiendo que es un número de 4 digitos
#Usamos while true para que siga ejecutandose hasta que paremos el bucle con break
while true; do
    echo Introduce tu número
    read numero
intentos=$((intentos + 1))

    if [[ numero -eq $pid ]] then
        echo ¡Felicidades, has adivinado el PID!
        echo Número de intentos: $intentos
        break
    elif [[ $numero -lt $pid ]] then
        echo El número ingresado es menor que el PID
    else
        echo El número ingreso es mayor que el PID
    fi
done