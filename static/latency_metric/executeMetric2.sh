#!/bin/bash

# Url para obtener nuevo token de facebook: https://developers.facebook.com/tools/explorer/145634995501895/
# Url para obtener nuevo token google: https://developers.google.com/+/web/api/rest/latest/activities/list#try-it
# (Para el caso de Google, haces una petición a la API con el explorer API, vas a networks, y coges el token que
# viene en el header Authorization: 'Bearer TOKEN')

# Antes de hacer una prueba nueva hay que hacer los siguientes pasos:
# - 	Hay que cambiar el token que está en FacebookWallLatency.html (carpeta Stable) y la variable FACEBOOK_TOKEN
# En GoogleplusLatency.html (Carpetas Accuracy, Latency, Stable) cambiar el valor de la variable access_token y la variable GOOGLE_TOKEN
FACEBOOK_TOKEN="EAACEdEose0cBANs1ijLt2Iy5kWjvtAZA8iwpA0Ba1l96gBO2rhM1k9M0qDZBn9bTZCO0SD7ygcyQ6mjQ5rKXuuz5HCWQmlQWfv3KDQMv3ZBiczv88hoC9rynj6Q8DqIxG92SWida1xUSEXI5vLtf4WfUmVfENgXBOAhRrcc6uQZDZD"
GOOGLE_TOKEN="ya29.Cjm_A3d329LnA9EkiezK6RY7YX5pYqOmUTNovsXC9oKm8VrYlowX74_kKV3LRmXGEOSJdi6JF3RUydE"

# Comentar esta línea si los componentes están deplegados en remoto
python -m SimpleHTTPServer >> /dev/null &
PID=`echo $!`
echo $PID
# # Ejecutamos scripts para medir y recolectar los datos
#echo "##################################################################"
#echo "Realizando pruebas sobre el componente instagram-timeline..."
#python measureLatency.py instagram

# Esperamos un tiempo para asegurar que se recolectan los eventos de las distintas versiones
# y para intentar que las ejecuciones anteriores de componentes "no afecten" posteriores medidas
# sleep 10
# echo "##################################################################"
# echo "Realizando pruebas sobre el componente github-events..."
# python measureLatency.py github

# sleep 10
# echo "##################################################################"
# echo "Realizando pruebas sobre el componente facebook-wall..."
# python measureLatency.py facebook $FACEBOOK_TOKEN

#lo tengo en latency_metric_ana por falta de espacion al desplegar en app engine
# sleep 10
# echo "##################################################################"
# echo "Realizando pruebas sobre el componente googleplus-timeline..."
# python measureLatency.py googleplus $GOOGLE_TOKEN


sleep 10
echo "##################################################################"
echo "Recolectando y calculando métrica de latencia sobre los componentes probados..."
#python collectLatencyRecords.py instagram-timeline
#python collectLatencyRecords.py github-events
#python collectLatencyRecords.py facebook-wall
#python collectLatencyRecords.py googleplus-timeline
echo "Métricas calculadas"

# Matamos el proceso correspondiente al servidor local de componentes de python
kill -9 $PID

#twitter esta desplegado en remoto