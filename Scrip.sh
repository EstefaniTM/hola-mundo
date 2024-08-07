#!/bin/bash
#autor: Estefani Tipantunia


if [ $1 = crear-carpeta ];
then
        mkdir $2
        echo carpeta creada
        echo Los comandos usados fueron: mkdir
        echo ' '
        echo Use el comando ls -la para ver su nueva carpeta

elif [ $1 = borrar-carpeta ];
then
        rm -r $2
        echo carpeta borrada
        echo Los comandos usados fueron: rm y la opcion -r que elimina todo su contenido
        echo ' '
        echo Use el comando ls -la para verificar que su carpeta fue borrada

elif [ $1 = entrar-bandit ];
then
        #-p es el puerto para ingresar a bandit
        ssh -p 2220 bandit0@bandit.labs.overthewire.org
        echo Entrando a Bandit
        echo Los comandos usados fueron: ssh, la opcion -p que indica el puerto, mas el usuario@servicio de Bandit

elif [ $1 = listar-directorio ];
then
        echo listar directorio $2
        echo Los comandos usados fueron: ls mas la opcion -la que muestra la lista en unn formato mas detallado ademas de archivos ocultos
        ls -la $2

elif [ $1 = ver-ruta ];
then
        echo ruta encontrada
        echo Los comandos usados fueron: pwd que muestra la ruta donde esta el usuario actualmente
        pwd

elif [ $1 = mover-archivo ];
then
        if [ -f $2 ]; #-f verifica que exista el archivo o carpeta
        then
        echo Archivo movido
        echo Los comandos usados fueron: mv <archivo> <nueva-ubicación>
                mv $2 $3

        elif [ ! -d "$3" ];
        #-d es para saber si es un directorio, ! es para ponerlo en negativo, asi que esta diciendo si la variable $3 no es un directorio
        then
                echo Error: Archivo no encontrado. Verifique la ruta del archivo o el nombre del archivo
        else:
                echo Error: Archivo no encontrado. Verifique la ruta del archivo o el nombre del archivo
                exit 1 #exit es para detener el proceso del codigo y uno es como un codigo que se envia al S.O para decirle que pare
        fi

elif [ $1 = mostrar-contenido ];

then
        echo Los comandos usados fueron: cat
        cat $2

elif [ $1 = mostrar-procesos ];
then
        echo Los comandos usados fueron: htop
        htop

elif [ $1 = cambiar-usuario ];
then
        echo "Los comandos usados fueron: chown  <nuevo-usuario>:<nuevo-grupo> <archivo>"
        chown $2:$3 $4
#Estoy el $2:$3 es vasicamente el disenio de la variable que se va cambiar por lo que use el usuario, por eso agrege ese : que es un sepa#rador de el usuario y grupo

elif [ $1 = imprimir ];
then
        echo "Los comandos usados fueron: ps para mostrar informacion de sobre procesos y aux que muestra todo los procesos en un lenguaje legible y que incluye procesos de la terminal, ademas, de awk que se usa para analizar la informacion en formato texto para imprimir la segunda variable $1 y ordenarla con un sort para despues enviarlo con la redirección de salida > a un archivo txt "
        ps aux | awk '{print $1}' | sort > usuarios.txt


elif [ "$1" = "--help" ]; then
    echo -e "\n"
    echo -e "\033[1mLista de comandos\033[0m"
    echo -e "\n"
    echo -e "\033[1mUsa:\033[0m./scrip <comando>"
    echo -e "\n"
    echo -e "\033[1mComandos\033[0m"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mcrear-carpeta\033[0m         Este comando crea una carpeta."
    echo -e "                      Usa: crear-carpeta <nueva-carpeta>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mborrar-carpeta\033[0m        Este comando borra una carpeta."
    echo -e "                      Usa: borrar-carpeta <nombre-carpeta>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mentrar-bandit\033[0m         Este comando entra al servidor de bandit."
    echo "                      Usa: entrar-bandit"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mlistar-directorio\033[0m     Este comando muestra el contenido del directorio."
    echo "                      Usa: listar-directorio <nombre-del-directorio>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mver-ruta\033[0m              Este comando muestra la ruta actual del directorio."
    echo "                      Usa: ver-ruta"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mmover-archivo\033[0m         Este comando mueve un archivo a una nueva ubicación."
    echo "                      Usa: mover-archivo <archivo> <nueva-ubicación>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mmostrar-contenido\033[0m     Este comando muestra el contenido de un archivo sin abrirlo."
    echo "                      Usa: mostrar-contenido <archivo.txt>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mmostrar-procesos\033[0m      Este comando muestra la lista de procesos en ejecución."
    echo "                      Usa: mostrar-procesos"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mcambiar-usuario\033[0m        Este comando cambia el propietario de un archivo o directorio."
    echo "                     Usa: cambiar-usuario <nuevo-usuario>:<nuevo-grupo> <archivo>"
    echo "------------------------------------------------------------------------------------------------"
    echo -e "\033[1mimprimir\033[0m             Este comando imprime los procesos del comando ps aux solo la primera colunma y lo guarda en un archivo."
    echo "                      Usa: imprimir"

else:
        echo Error: comando no encontrado, use --help para ver los comandos
fi
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                                                                                                                                                                                           
~                                                                                                                                                                                                        
