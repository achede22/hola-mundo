#Colors
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

echo """

$blu escribiste $# Argumentos

$red el primer argumento es $1

$yel el segundo argumento \$2 es $2 \"""

$grn el tercer argumento es $3

$mag el PID es $$  $end

Todos los arcumentos --> $*

"""

F_ADIVINA()
{

    dialog \
    --title "Mi Script" \
    --backtitle "Menu Dialog" \
    --inputbox "Adivina el Nùmero que estoy pensando" 0 0 2>/tmp/input.$$
    A=$(cat /tmp/input.$$)

    for i in $(seq 0 25 100);do 
        sleep 1
        echo $i|dialog --gauge "Leyendo tu mente, escribiste $A" 0 0 0
    done

    if [ $A == 1 ]; then
          dialog \
        --title "Mi Script" \
        --backtitle "Menu Dialog" \
        --msgbox "ACERTASTE" 0 0
                      # or           # or
       elif [ $A == 2 ] || [ $A == 3 ] || [ $A == 4 ]; then
            dialog \
            --title "Mi Script" \
            --backtitle "Menu Dialog" \
            --msgbox "MUY CERCA" 0 0

           else
            dialog \
            --title "Mi Script" \
            --backtitle "Menu Dialog" \
            --msgbox "MUY LEEEEEEJOSSS" 0 0

    fi

    dialog \
    --title "Mi Script" \
    --backtitle "Menu Dialog" \
    --yesno "¿Desea Continuar?" 0 0
    RESPUESTA=$?  # 0 ES YES - 1 ES NO

    while [ $RESPUESTA == 0 ];do # dijo que SI
        echo "elegiste $RESPUESTA " 
        F_ADIVINA
    done
}

F_ADIVINA







