#!/bin/bash

# Url para obtener nuevo token de facebook: https://developers.facebook.com/tools/explorer/145634995501895/
# Url para obtener nuevo token google: https://developers.google.com/+/web/api/rest/latest/activities/list#try-it
# (Para el caso de Google, haces una petición a la API con el explorer API, vas a networks, y coges el token que
# viene en el header Authorization: 'Bearer TOKEN')

# Antes de hacer una prueba nueva hay que hacer los siguientes pasos:
# - 	Hay que cambiar el token que está en FacebookWallLatency.html (carpeta Stable) y la variable FACEBOOK_TOKEN
# En GoogleplusLatency.html (Carpetas Accuracy, Latency, Stable) cambiar el valor de la variable access_token y la variable GOOGLE_TOKEN
FACEBOOK_TOKEN="EAACEdEose0cBAJyDd2jQa9MMQ6Egt2FYTmVsumgtZCZCHYK9Wsx7FM0brZBNS6ZCq8jB3tRNBKwU42A8CHcUJDL5r3XZCZCExUz3Xa1DHQGI9XGr3APGIdBZBeVpXQjjLZBn9m2eCMMq0NDHZCgllkX1U3ZCnQZBMmsw6F2gteGdVtxiQZDZD"
GOOGLE_TOKEN="ya29.CjnCA2FLSuAdZjwruMZnaZ23q9xlh0l298I1N233qAxLTanE8KRNBgHMeBFEOKdNHIkifoHneOsWy6s"

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
echo "Realizando pruebas sobre el componente pinterest-timeline..."
python measureLatency.py pinterest

sleep 10
echo "##################################################################"
echo "Recolectando y calculando métrica de latencia sobre los componentes probados..."
#python collectLatencyRecords.py instagram-timeline
#python collectLatencyRecords.py github-events
#python collectLatencyRecords.py facebook-wall
#python collectLatencyRecords.py googleplus-timeline
python collectLatencyRecords.py pinterest-timeline
echo "Métricas calculadas"

# Matamos el proceso correspondiente al servidor local de componentes de python
kill -9 $PID

#twitter esta desplegado en remoto