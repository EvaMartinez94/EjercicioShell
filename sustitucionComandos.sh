#!/bin/bash
# Ejercicio 1:
# Un script que nos pida la fecha de nacimiento y nos diga la edad que tiene el usuario en el momento que se ejecute el script.
# Nota: tener en cuenta el día y el mes que ha nacido ya que eso puede influir en la edad en ese momento.

# %d-- día del mes / %m-- mes en cifras / %Y-- año completo

echo Introduce tu año de nacimiento
read year
echo Introduce tu mes de nacimiento en formato númerico
read mes
echo Por último, introduce que día naciste
read dia
edad=$(($(date +%Y) -$year))
#así es como se sacaria la edad sin tener en cuenta mes y día
if [ $(date +%m) -lt $mes ]; then
    edad=$(($edad-1))
elif [ $(date +%m) -eq $mes -a $(date +%d) -lt $dia ]; then
    edad=$(($edad-1))
elif [ $(date +%m) -eq $mes -a $(date +%d) -eq $dia ]; then
    edad=$(($(date +%Y) -$year))
    echo ¡¡Felicidades, es tu cumpleaños!!
fi
echo Tienes $edad años
#-a sirve para combinar dos condiciones y que ambas deben cumplirse (AND)
#cuando quieres que haga una operación matematica debes poner doble paréntesis (())
