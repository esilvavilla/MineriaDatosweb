# Relación entre tipos estelares y tipos de exoplanetas

# Anteproyecto

## 1. Objetivo general

Determinar si existe una relación significativa entre las características físicas de las estrellas y los tipos de exoplanetas detectados a su alrededor.

## 2. Objetivos específicos

- Clasificar las estrellas según propiedades físicas como masa, temperatura efectiva, luminosidad, metalicidad, edad y tipo espectral.
- Clasificar los exoplanetas detectados según criterios de radio o masa planetaria.
- Analizar la distribución de tipos planetarios en función de las propiedades de sus estrellas anfitrionas.
- Evaluar correlaciones entre masa estelar, metalicidad, temperatura efectiva y tipo de planeta detectado.
- Construir un modelo de machine learning que permita predecir el tipo de planeta más probable para una estrella dada.
- Aplicar el modelo a estrellas sin planetas detectados para estimar qué tipos de planetas podrían poseer.

## 3. Ciencia detrás del proyecto

La formación de planetas ocurre en discos protoplanetarios compuestos por gas y polvo alrededor de estrellas jóvenes. Según el modelo de acreción de núcleo, primero se forman pequeños granos sólidos que se agregan hasta producir planetesimales y embriones planetarios [1]. Si el núcleo alcanza suficiente masa antes de que el gas del disco se disipe, puede acumular una envoltura gaseosa y formar planetas gigantes.[1]

La metalicidad estelar representa la abundancia de elementos más pesados que el hidrógeno y el helio presentes en la estrella. Una mayor metalicidad puede indicar una mayor cantidad de material sólido disponible en el disco protoplanetario, lo cual podría favorecer la formación de determinados tipos de planetas, por lo que la variabilidad en metalicidad podría indicar variabilidad en tipo de exoplaneta.

El objetivo es evaluar si estas relaciones se reflejan en los datos observacionales actuales de exoplanetas.

## 4. Metodología

### 4.1 Recolección de datos

Los datos serán obtenidos principalmente desde:

NASA Exoplanet Archive
VizieR (Catalogue Service)

Se utilizarán lod siguientes datos que contengan:

**Datos estelares:**
Masa
Temperatura efectiva
Radio
Luminosidad
Metalicidad
Edad

**Datos planetarios:**
Masa
Radio
Período orbital
Tipo de planeta

### 4.2 Clasificación de estrellas

Las estrellas serán clasificadas según:

Tipo espectral
Masa
Temperatura
Metalicidad
Presencia o ausencia de planetas detectados

Luego, se agruparán para comparar las características de ambos conjuntos.

### 4.3 Clasificación de exoplanetas

Los exoplanetas serán clasificados según su tamaño y masa en categorías como [2][3]:

| Tipo planetario | Radio aproximado         |
| --------------- | ------------------------ |
| Rocosos         | (R < 1.6 R$_{\oplus}$)   |
| Supertierras    | (1.6 - 2.5 R$_{\oplus}$) |
| Mini-neptunos   | (2.5 - 4 R$_{\oplus}$)   |
| Neptunianos     | (4 - 6 R$_{\oplus}$)     |
| Júpiteres       | (R > 6 R$_{\oplus}$)     |

Esta clasificación permitirá analizar la distribución de planetas respecto al tipo de estrella anfitriona.

### 4.4 Análisis

Se realizarán análisis exploratorios y estadísticos para identificar:

- Frecuencia de tipos planetarios por tipo de estrella.
- Posibles correlaciones entre masa estelar y tipo de planeta.
- Relación entre metalicidad y los tipos de planetas que posee la estrella.
- Distribuciones predominantes o comportamientos aleatorios.

### 4.5 Aplicación de Machine Learning

Se implementará Machine Learning con la entrada de datos de estrellas de los pasos anteriores, para que el modelo analice las estrellas que tienen planetas conocidos y luego aplicarlo con las estrellas sin planetas detectados para estimar qué tipo de planetas podrían poseer.

### 4.6 Sesgos en los datos y resultados.

Un riesgo importante que puede tener el modelo es que puede tener sesgos de detección, es decir, que las estrellas con planetas actualmente son un sesgo de observación, ya sea por tiempos de observación, que planetas de periodos largos son más difíciles de detectar como los que tenemos en nuestro sistema solar como Urano y Neptuno que tienen periodos que no abarcan siquiera el periodo desde que se detectó el primer exoplaneta. Además de sesgos de tamaño ya que los planetas con gran tamaño son más fáciles de detectar.

Además que existen también sesgos por el tipo de detección utilizada. Por ejemplo, el método de tránsito detecta mejor planetas grandes y cercanos a su estrella; el método de velocidad radial, detecta mejor planetas masivos y cercanos.

Un sesgo más es que no todas las estrellas se han observado con la misma frecuencia.

## 5. Herramientas

Google Colab

**Python:**
Librerías principales
pandas
numpy
matplotlib
seaborn
astropy
astroquery

Herramientas de maching learning.

## 6. Resultados esperados

- Identificación de relaciones entre tipos de estrellas y tipos de exoplanetas.
- Determinación de posibles patrones físicos en la formación planetaria.
- Construcción de un modelo predictivo que pueda estimar el tipo de exoplaneta más probable alrededor de una estrella.
- Predicción de posibilidad de tipos de planetas en estrellas sin detección de exoplanetas actualmente.

## Referencias

[1] Cuartas Restrepo, P. (2023). Ciencias planetarias – Parte I: Formación de los planetas (primera edición). Universidad de Antioquia.

[2] Rogers, L. A. (2015). Most 1.6 Earth-radius Planets are not Rocky. The Astrophysical Journal, 801(1), 41. https://arxiv.org/pdf/1407.4457

[3] PlanetMad. (2024). Presentación exoplanetas 2024 04 25 [Presentación PDF]. https://planetmad.es/wp-content/uploads/2024/04/presentacion_exoplanetas_2024_04_25.pdf
