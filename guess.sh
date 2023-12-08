#!/usr/bin/env bash

function guess(){
    valor=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Introduzca su respuesta por favor"
        read  number
        if [ $number -lt $valor ]
        then
            echo "Su respuesta es inferior al valor correcto"
        elif [ $number -gt $valor ]
        then
            echo "Su respuesta es superior al valor correcto"
        else
            echo "Es el valor correcto, felicidades"
        break;
        fi
    done
}
echo "Adivine el numero de archivos que hay en el directorio actual"
guess
