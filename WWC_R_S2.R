#----------------------------------------#
#Exploracion de DataFrames
#----------------------------------------#
mtcars #Dataset disponible en R

dim(mtcars) # Obtiene dimensiones

colnames(mtcars) # Obtiene nombres de columnas

head(mtcars) # Muestra primeras 6 observaciones

str(mtcars) # Imprime datos de la estructura

summary(mtcars) # Imprime cuartiles para cada columna

summary(iris) # numérica, conteos para otras

#----------------------------------------#
#Exploracion de Filas y Columnas en Dataframe 
#----------------------------------------#
mtcars[3,3] # Elige un valor espécifico

mtcars[3,"disp"] # Equivalente, más legible

mtcars[,c("mpg", "disp")] # Subconjunto de columnas

mtcars[3,] # Elige una observación

mtcars[1:10,] # Elige varias observaciones

#----------------------------------------#
# Mascaras Booleanas
#----------------------------------------#
mtcars[3,3] # Elige un valor espécifico

mtcars[3,"disp"] # Equivalente, más legible

mtcars[,c("mpg", "disp")] # Subconjunto de columnas

mtcars[3,] # Elige una observación

mtcars[1:10,] # Elige varias observaciones



#----------------------------------------#
# Valores Nulos : Deteccion y Manejo
#----------------------------------------#

# Cargar datos
df <- read.csv("heroes_information.csv", na.strings="-")

# Ver tabla completa
is.na(df)

# Porcentaje de valores nulos en una columna
prop.table(table(is.na(df$Eye.color)))

# Imprimir observaciones con valores nulos en columna
df[is.na(df$Eye.color),]

# Conteos por columna usando opción
table(df$Gender, useNA="ifany")

#----------------------------------------#
# Estrategia para Valores Nulos
#----------------------------------------#

df_clean <- na.exclude(df)


df[is.na(df$Eye.color),"Eye.color"] <- "black"


#----------------------------------------#
# Normalización de Datos 
#----------------------------------------#

#normalizacion con funcion logaritmica
data = c(1200,34567,3456,12,3456,0985,1211)
summary(data)
log_scale = log(as.data.frame(data))

#normalizacion con Maximo y Minimo
#defina la función de normalización
min_max_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

#Aplique la función a las primeras 4 columnass del dataset iris y dejelo #en una dataset copia llamado iris_norm
iris_norm <- as.data.frame(lapply(iris[1:4], min_max_norm))


#normalizacion con la funcion scale 
#standardize Sepal.Width
iris$Sepal.Width <- (iris$Sepal.Width - mean(iris$Sepal.Width)) / sd(iris$Sepal.Width)

head(iris)

#estandardiza las primeras 4 columnass de iris
iris_standardize <- as.data.frame(scale(iris[1:4]))

#vemos las primeras 6 filas de Iris_standarize
head(iris_standardize)

hist(iris$Sepal.Width)

