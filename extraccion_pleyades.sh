#!/bin/bash
echo "=================================================="
echo " 🚀 Iniciando Pipeline de Extracción de Datos"
echo "=================================================="

# 1. Definimos la consulta ADQL pura (sin preocuparnos por espacios o símbolos especiales)
ADQL="SELECT RA_ICRS, DE_ICRS, pmRA, pmDE, Gmag, BPmag, RPmag FROM \"I/355/gaiadr3\" WHERE Gmag < 15 AND 1=CONTAINS(POINT('ICRS', RA_ICRS, DE_ICRS), CIRCLE('ICRS', 56.75, 24.11, 1.5))"

# 2. Endpoint base de VizieR (limpio, sin parámetros pegados)
TAP_URL="https://tapvizier.cds.unistra.fr/TAPVizieR/tap/sync"

# 3. Descargamos usando cURL con el método POST.
# --data-urlencode codifica matemáticamente la consulta para que el servidor no la rechace.
echo "📡 Conectando con el servidor TAP de VizieR..."
curl -s -X POST \
     -d "request=doQuery" \
     -d "lang=ADQL" \
     -d "format=csv" \
     --data-urlencode "query=${ADQL}" \
     "${TAP_URL}" -o pleyades_bruto.csv

echo "✅ Descarga completada: pleyades_bruto.csv"
echo "Cantidad de datos descargados: "
cat pleyades_bruto.csv | wc -l
echo "=================================================="
