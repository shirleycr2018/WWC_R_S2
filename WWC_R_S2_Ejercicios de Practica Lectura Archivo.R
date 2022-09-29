

# Manejo de Nulos 
heroes <- read.csv("heroes_information.csv",na.strings="-")
heroes[heroes == -99] <- NA

#1. Excluir las filas que contengan nulos
df_clean <- na.exclude(df)
#2. Remplazar con algun valor fijo 

#3. Para valores numericos podemos

# 3.1 reemplazarlos con valor por defecto 
heroes[is.na(heroes$Weight),"Weight"] <- 0
# 3.2 reemplazarlos con valor por defecto por ejemplo con el promedio
heroes[is.na(heroes$Weight),"Weight"] <- mean(heroes$Weight, na.rm = T)

library(tidyverse) 


