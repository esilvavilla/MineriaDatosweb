#!/bin/bash

# Configuración
ARCHIVO_SALIDA="server_data_large.csv"
CANTIDAD_FILAS=100000

echo "🚀 Iniciando generación de $CANTIDAD_FILAS registros..."
echo "⏳ Esto puede tomar unos segundos..."

# Usamos AWK para generar los datos masivamente
# -v n=$CANTIDAD_FILAS: Pasamos la variable de bash a awk
awk -v n=$CANTIDAD_FILAS 'BEGIN {
    # Inicializar semilla aleatoria
    srand();
    
    # Definir tipos de objetos para variar
    types[1]="GRB"; 
    types[2]="Supernova"; 
    types[3]="Variable_Star"; 
    types[4]="Ruido";
    types[5]="Quasar";

    # Imprimir encabezado
    print "ID,Tipo,Mag,Prob,RA,DEC";

    # Bucle principal
    for (i=1; i<=n; i++) {
        
        # 1. Generar ID Consecutivo: Es simplemente la variable i
        
        # 2. Elegir Tipo Aleatorio (1 a 5)
        tipo = types[int(rand()*5) + 1];
        
        # 3. Generar Magnitud (Flotante entre 12.0 y 22.0)
        # rand() da un numero entre 0 y 1.
        mag = 12.0 + (rand() * 10.0);
        
        # 4. Generar Probabilidad (Entero entre 0 y 100)
        prob = int(rand() * 101);
        
        # 5. Generar Coordenadas RA (HH:MM:SS) simuladas
        ra_h = int(rand() * 24);
        ra_m = int(rand() * 60);
        ra_s = int(rand() * 60);
        
        # 6. Generar Coordenadas DEC (+-DD:MM:SS) simuladas
        dec_d = int(rand() * 180) - 90; # Entre -90 y 90
        dec_m = int(rand() * 60);
        dec_s = int(rand() * 60);

        # Imprimir fila formateada
        # %d = entero, %s = string, %.2f = float con 2 decimales, %02d = entero con relleno de ceros (05 en vez de 5)
        printf "%d,%s,%.2f,%d,%02d:%02d:%02d,%+03d:%02d:%02d\n", i, tipo, mag, prob, ra_h, ra_m, ra_s, dec_d, dec_m, dec_s;
    }
}' > "$ARCHIVO_SALIDA"

# Verificación final
SIZE=$(du -h "$ARCHIVO_SALIDA" | cut -f1)
LINES=$(wc -l < "$ARCHIVO_SALIDA")

echo "✅ Archivo generado exitosamente: $ARCHIVO_SALIDA"
echo "📊 Tamaño: $SIZE"
echo "📝 Líneas totales: $LINES"
echo "🔍 Primeras 5 líneas:"
head -n 5 "$ARCHIVO_SALIDA"

