#!/bin/bash

# #Ejercicio 1:
# -Escribir el siguiente texto con variables:
# “Mi nombre es” <nombre> “tengo” <edad> “años y vivo en” <ciudad>

miNombre=Eva
miEdad=29
miCiudad=Sevilla

echo "Mi nombre es $miNombre, tengo $miEdad años y vivo en $miCiudad"

# Ejercicio 2:
# -Escribir el siguiente texto pero con inputs por consola:
# “Mi actividad favorita es $actividad. Mi comida favorita es $comida”

echo "¿Cuál es tu actividad favorita?"
read actividad
echo "¿Y tu comida favorita?"
read comida

echo "Mi actividad favorita es $actividad. Mi comida favorita son $comida"
