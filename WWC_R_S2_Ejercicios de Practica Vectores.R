#1. Use la función c para crear un vector con las temperaturas altas promedio en enero para
#Beijing, Lagos, París, Río de Janeiro, San Juan y Toronto, que son 
#35, 88, 42, 84, 81 y 30 grados Fahrenheit. 
#Llame al objeto temp.
temp <- c(35, 88, 42, 84, 81 , 30 )
#2. Ahora cree un vector con los nombres de las ciudades y llame al objeto city.
city <- c( "Beijing", "Lagos", "París", "Río de Janeiro", "San Juan" , "Toronto")
#3. Utilice la función names y los objetos definidos en los ejercicios anteriores para asociar los datos de temperatura con su ciudad correspondiente.
names(temp) <- city

#Create data frame 
city_temps <- data.frame(name = city, temperature = temp)

#4. Utilice los operadores [ y : para acceder a la temperatura de las tres primeras ciudades de la lista.
temp[1:3]
#5. Utilice el operador [ para acceder a la temperatura de París y San Juan.
temp["París"]
#6. Utilice el operador : para crear una secuencia de números  12,13,14,…,73.
my_sequence1 <- 12:73
# Otra forma de hacer la sequencia 
my_sequence2 <- seq(12,73)                                                     
#7. Cree un vector que contenga todos los números impares positivos menores que 100.
seq(1,100, by = 2 )

#8. ¿Cuál es la clase del siguiente objeto a <- seq(1, 10, 0.5)?
class(a)
                                                       
#9. ¿Cuál es la clase del siguiente objeto a <- seq(1, 10)?
class(a)
                                                       
#10. La clase de class(a<-1) es numérica, no entero. 
#R por defecto es numérico y para forzar un número entero, debe añadir la letra L. 
#Confirme que la clase de 1L es entero.
class(a<-1)
class(a<-1L)
