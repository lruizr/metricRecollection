#!/bin/bash

echo "##################################################################"
echo "Realizando pruebas sobre el componente facebook-wall..."
python measureLatency.py facebook EAACEdEose0cBAIoateGlRtsn95bGukvVY0ZCJSvxPp27bsw5tPI6F6HHqqtZBeRgwWOhJGBQqJbPkMR4UwYnzI48ZAuk6KCLxnhaq4TYgYjhcvwF3d1X3usrdO7XC8nAmIrUMYt9ZCeA6aZATuHItdyUwozATIrgj85G6YKPL3QZDZD

sleep 10
echo "##################################################################"
echo "Recolectando y calculando métrica de latencia sobre los componentes probados..."
python collectLatencyRecords.py facebook-wall
echo "Métricas calculadas"

