
respuesta_invalida()
{
    echo "Opciòn invalida
        Las opcionas vàlidas son
        1- sql
        2- rsync
        3- tar
        " 
}

respuesta_sql()
{
    echo "respaldado con mysqldump"
}

respuesta_rsync()
{
    echo "respaldado con rsync"
}

respuesta_tar()
{
    RESPALDO=tar
    echo "comprimido con tar"
}

mi_menu()
{
echo 
  read INPUT_STRING

  echo "seleccionaste $INPUT_STRING " # va a mostrar un numero

  case $INPUT_STRING in
    1)
        respuesta_sql
        ;;
    2)
        respuesta_rsync
        ;;
    3)
        respuesta_tar
        ;;
    *)
        respuesta_invalida
        mi_menu
        ;;
  esac
}

########## AQUI EMPIEZA EL SCRIPT 

 echo "
        Las opcionas vàlidas son
        sql
        rsync
        tar
        "

mi_menu
echo "That's all folks!"
