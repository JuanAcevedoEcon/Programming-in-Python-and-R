#=========================================================================================================#
#                         Unidad de Informática - Facultad de Ciencias Económicas
#                                Curso Libre Programación básica en Python y R 2022-1
#                                   Sesión 7: Librerías de R
#                                   Monitor: Juan Felipe Acevedo Pérez                                 
#=========================================================================================================#


#=================#
#### Contenido ####
#=================#

# 1. Dplyr
# 2. Ggplot2
# 3. String

####dyplir#### 
#Función basica incluidas
# install.packages("wooldridge")

library(dplyr)
library(wooldridge)
attach(_____)
attach(_____)

#---Select---
_____(_____, wage, educ, exper) 

#---Filter---

#para una columna 
_____(_____, _____>=3.00) 
#Para dos o mas columnas:
_____(_____, _____>=3.00, educ<10) 

#---Arrenge---

_____(wage1, wage)
_____(wage1, educ)

#---Rename---

______(wage1)
______(wage1, salario = ______, educacion = ______ , experiencia = ______)

#---Mutate---
______(wage1, wage10=wage/100)

#---Summarise---

summarise(wage1, media= ____(wage) , mediana=______(wage), desviacion = __(wage), varianza = ___(wage))

______(wage1$wage)


# ----------------- Ejercicios en clase ----------------- 
#1. Con la base de datos wage2 crer un filtro el cual nos mueste los salarios inferiores o iguales a: 1000 y organícela 
#de menor a mayor según el salario.
#2. Con la base de datos creada anteriormente, cree una nueva columna con el nombre de wageW2, en la cual eleve al cuadrado
#todos los salarios.

View(wage2)



#### ------------ ggplot2 ------------ ####
#install.packages("ggplot2")
library(ggplot2) 

# Gráfico de barras
gf1<-ggplot(data = wage1, aes(x = educ))+geom_bar(color = "green")+ggtitle("Años de educación") 
gf1 

# Grfico de puntos 
gf2<-ggplot(data = wage1, aes(x = educ, y = wage, color = as.factor(married) ))+geom_jitter()+geom_smooth() 
gf2

# Histograma
gf3<-ggplot(data = wage1, aes(x= wage))+geom_histogram(color = "red")
gf3

# ----------------- Ejercicios en clase ----------------- 
#1. cree un grafico de puntos en el cual nos muestre la cantidad de horas y el salario de la base de datos de wage2
#2. cree un grafico de barras el cual nos muestre el IQ de las personsas de la base de datos de wage2


# install.packages("esquisse")


#### ------------ stringtr ------------ ####
#install.packages("stringr")
library(stringr)

x<-c(1251, 248, 145, 188, 185, 5246)

str_length(x)

str_c(x, collapse = ", ") 

str_sub(x, 1,2) 

str_subset(x,"2")

str_count(x, "1")

str_detect(x,"1")

str_count(x,"1")

str_locate(x,"8")

str_extract(x,"5")

str_match(x, "(.)[12345](.)")

str_replace(x,"1","3")

y<-str_split(x,",") 

z<-str_split_fixed(y,",",1)

# ----------------- Ejercicios en clase ----------------- 
# Cree un vector que contenga 10 elemntos con numeros distintos de 5 digitos cada uno, 
#1. indique en cual elementos se encuentra el numero 1 y 5.
#2. indique en las posición el la cual se encuentra el numero 4 
#3. en un nuevo vector extraiga el numero 3 de los elementos
#4. remplace el numero 9 por un 0. 

