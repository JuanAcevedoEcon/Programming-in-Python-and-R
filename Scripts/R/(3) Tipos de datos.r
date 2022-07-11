
#### Librerías #### 

# install.packages("tidyverse")
# install.packages("tokenizers")
library(tidyverse)
library(tokenizers)

#### Tipos de Datos ####

# typeof(____) 

# class(_____) 

#### Vectore ####

#El manejo de vectores es muy similar en r, pero este se realiza por medio de vectores
#Conjunto de elemntos ordenados de elementos 
#las listas son delimitadas por medio de "()", se separan por medio de comas y la funci?n demarcada por "C"
#para

# lista <- c(__, __, __)
# class(lista)


#Se puede realizar la transformación del tipo de dato que se encuentra en el vector 

# lista <- as.______(lista)
# lista
# class(lista)

####Modificación de texto####

texto <- "También entiendo que como es temporada de elecciones, las expectativas para lo que lograremos este año son
        bajas. Añn así, señor Presidente de la Cámara de Representantes, aprecio el enfoque constructivo que usted y 
        los otros líderes adoptaron a finales del año pasado para aprobar un presupuesto, y hacer permanentes los 
        recortes de impuestos para las familias trabajadoras. Así que espero que este año podamos trabajar juntos 
        en prioridades bipartidistas como la reforma de la justicia penal y ayudar a la gente que está luchando 
        contra la adicción a fármacos de prescripción. Tal vez podamos sorprender de nuevo a los cínicos."

# palabras <- tokenize_words(_____) #Separa el texto por palabras
# view(palabras)


#Dado que se creo una lista con todas las palabras, ahora se puede realizar modicifaciones sobre ellas
#Creacion de una tabla por ejemplo


#Data frame: es una estructura de datos con dimesiones en la cual se pueden guardar tipos de datos
# tabla <- data_frame(palabras = names(_____), recuento = as.numeric(_____))
# tabla
