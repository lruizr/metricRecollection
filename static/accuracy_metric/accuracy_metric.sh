#!/bin/bash 


##############################################################################################################
#-----------------------------------------PRUEBAS DE COMPLETITUD----------------------------------------------
##############################################################################################################

# Ejecutamos scripts para medir y recolectar los datos
# Lo primero es desplegar el servidor

python -m SimpleHTTPServer >> /dev/null &
PID=`echo $!`
#---------#
#TWITTER
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version master"
# python completitud_REFACTOR.py twitter master
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version latency"
# python completitud_REFACTOR.py twitter latency
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version accuracy"
# python completitud_REFACTOR.py twitter accuracy
# sleep 10
# pkill chrome

#---------#
#GITHUB
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version master"
# python completitud_REFACTOR.py github master
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version latency"
# python completitud_REFACTOR.py github latency
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version accuracy"
# python completitud_REFACTOR.py github accuracy
# sleep 10
# pkill chrome


#---------#
#INSTAGRAM
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version master"
# python completitud_REFACTOR.py instagram master
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version latency"
# python completitud_REFACTOR.py instagram latency
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version accuracy"
# python completitud_REFACTOR.py instagram accuracy
# sleep 10
# pkill chrome


#---------#
#FACEBOOK
#---------#

echo "##################################################################"
echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version master"
python completitud_REFACTOR.py facebook master
sleep 10
# pkill chrome

echo "##################################################################"
echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version latency"
python completitud_REFACTOR.py facebook latency
sleep 10
# pkill chrome

echo "##################################################################"
echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version accuracy"
python completitud_REFACTOR.py facebook accuracy
sleep 10
# pkill chrome


# #---------#
# #GOOGLE+
# #---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version master"
# python completitud_REFACTOR.py googleplus master
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version latency"
# python completitud_REFACTOR.py googleplus latency
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version accuracy"
# python completitud_REFACTOR.py googleplus accuracy
# sleep 10
# pkill chrome

#-------#
# PINTEREST
#-------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente pinterest-timeline: metrica completitud version master"
# python completitud_REFACTOR.py pinterest master
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente pinterest-timeline: metrica completitud version latency"
# python completitud_REFACTOR.py pinterest latency
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente pinterest-timeline: metrica completitud version accuracy"
# python completitud_REFACTOR.py pinterest accuracy
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "##################################################################"
# echo "Valores calculados para la metrica de completitud"

kill -9 $PID