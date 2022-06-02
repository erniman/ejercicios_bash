#!/bin/bash

# Se utiliza el comando bc para hacer calculos de numeros no enteros.

echo "Bienvenido al programa que calulará su gasto de nafta"
sleep 2

echo "Por favor ingrese el precio actual de la nafta super (en pesos):"
read precio_nafta

echo "Ingrese la distancia recorrida en su viaje (en km):"
read distancia_recorrida

echo "Finalmente necesitamos saber el consumo promedio cada 100Km (en litros):"
read consumo_100km

# El calculo es asi por regla de 3: gasto_final = (distancia_recorrida x consumo_100km) / 100km
primer_calculo=$(echo "scale=2; $distancia_recorrida*$consumo_100km" | bc)


gasto_final=$(echo "scale=2; $primer_calculo/100" | bc)

gasto_pesos=$(echo "scale=2; $gasto_final*$precio_nafta" | bc)


echo "Hola, en tu viaje de $distancia_recorrida km, consumiste $consumo_100km litros y gastaste $gasto_pesos pesos."
