#!/bin/bash
# Ejercicio 1:
# -Pasar tres parámetros e imprime el que está en la posición 1 y 3
echo $1 $3
echo "El parámetro 1 y 3 son $1 y $3"

# Ejercicio 2:
# - Completar la siguiente frase:
# “En el fichero” <aquí va el nombre del fichero> “existen” <aquí va la cantidad de parámetros>

echo "En el fichero $0 existen $# parámetros"
# $0 (Para que te de el nombre del fichero)
# $# (Cantidad de parametros que recibe el script)