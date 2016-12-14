#!/bin/bash 


##############################################################################################################
#-----------------------------------------PRUEBAS DE COMPLETITUD----------------------------------------------
##############################################################################################################

# Ejecutamos scripts para medir y recolectar los datos


#---------#
#TWITTER
#---------#

echo "##################################################################"
echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version master"
python completitud.py twitter master
sleep 10
# pkill chrome

echo "##################################################################"
echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version latency"
python completitud.py twitter latency
sleep 10
# pkill chrome

echo "##################################################################"
echo "Realizando pruebas sobre el componente twitter-timeline: metrica completitud version accuracy"
python completitud.py twitter accuracy
sleep 10
# pkill chrome

#---------#
#GITHUB
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version master"
# python completitud.py github master
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version latency"
# python completitud.py github latency
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events: metrica completitud version accuracy"
# python completitud.py github accuracy
# sleep 10
# pkill chrome


#---------#
#INSTAGRAM
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version master"
# python completitud.py instagram master
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version latency"
# python completitud.py instagram latency
# sleep 10
# pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente instagram-timeline: metrica completitud version accuracy"
# python completitud.py instagram accuracy
# sleep 10
# pkill chrome


#---------#
#FACEBOOK
#---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version master"
# python completitud.py facebook master
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version latency"
# python completitud.py facebook latency
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente facebook-wall: metrica completitud version accuracy"
# python completitud.py facebook accuracy
# sleep 10
# # pkill chrome


# #---------#
# #GOOGLE+
# #---------#

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version master"
# python completitud.py googleplus master
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version latency"
# python completitud.py googleplus latency
# sleep 10
# # pkill chrome

# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline: metrica completitud version accuracy"
# python completitud.py googleplus accuracy
# sleep 10
# # pkill chrome



# echo "##################################################################"
# echo "##################################################################"
# echo "Valores calculados para la metrica de completitud"