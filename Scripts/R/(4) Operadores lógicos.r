#=========================================================================================================#
#                         Unidad de Inform?tica - Facultad de Ciencias Ec?micas
#                                Curso Libre Programaci?n b?sica en Python y R 2022-1
#                                   Sesi?n 4: Operadores l?gicos
#                                   Monitor: Juan Felipe Acevedo Pérezz                                
#=========================================================================================================#

#=================#
#### Contenido ####
#=================#

# 1. Operadores lógicos
# 2. Sentencias Condicionales


#==========================#
#### Operadores lógicos ####
#==========================#


#Operaodor AND (&)

T & T
T & F
T & F  
F & T  
F & F

#Operador OR (alt 124, |)

T | T
T | F
T | F  
F | T  
F | F


#Operador NOT (!)

#Simplemente invierte True por False y False por True.

!T
!F

# Valores especiales

# Valor nulo numérico
# Valor nulo no numérico
# Valor nulo booleano
class(_)
class(_)
class(_)


#==========================================#
#### Sentencias Condicionales (Solo IF)####
#=========================================#


#### Sintaxis con if y else ####

edad = 10


# __ (_____ >= 18) {
  
  print('Usted es mayor de edad')
  
# } ______ {
  
  print('Usted es menor de edad')
  
# }




_______

__ (_______ >= ____) {
  
  print('Felicitaciones, usted aprobó el curso')
  
} _____ {
  
  print('Usted reprobó el curso')
  
}




#### Sintaxis con if, else if y else ####

vector_1 = sample(1:100, 10); vector_1
vector_media = mean(vector_1)

if (vector_media >= 30 & vector_media < 40) {
  
  paste('La media es:', vector_media, '. Y está en la categoría de números pequeños')
  
} else if (vector_media >= 40 & vector_media < 50) {
  
  paste('La media es:', vector_media, '. Y está en la categoría de números medianitos')
  
} else if (vector_media >= 50 & vector_media < 60) {
  
  paste('La media es:', vector_media, '. Y está en la categoría de números medianotes')
  
} else if (vector_media > 60) {
  
  paste('La media es:', vector_media, '. Y está en la categoría de números grandes')
  
} else {
  
  paste('La media es:', mean(vector_1), '. Y está en la categoría de números diminutos')
  
}


#### Ejemplo aplicado: automatización de reportes ####

datos_inicial = data.frame(Mes = seq(from = as.Date('2020-03-1'), to = as.Date('2022-01-1'), by="month")-1,
                           Inflación = c(0.36, 0.62, 0.27, -0.19, -0.39, -0.43, 0.16, 0.08, 0.38, -0.01, -0.19, 0.37, 0.21, 0.67, 0.39, 0.3, 0.15, 0.15, 0.31, 0.32, 0.3, -0.17, 0.3)
)


datos_inicial

# () Paréntesis
# [] Corchetes
# {} Llaves

plot(x = datos_inicial[,1], y = datos_inicial[,2], type = 'l')

nuevo_dato = 0.44
datos_final = data.frame(Mes = seq(from = as.Date('2020-03-1'), to = as.Date('2022-03-1'), by = 'month')-1,
                         Inflación = c(0.33, 0.74, 1.18, 0.77, -0.68, -0.91, -0.26, -0.28, 0.51, -0.27, 0.07, 0.65, 0.86, 0.45, 1.12, 1.41, 2.85, -0.42, 0.44, 0.71, 0.8, 0.62, 1.03,
                                       2, ______)
)
datos_final

último = datos_final[nrow(datos_final),2]
penúltimo = datos_final[nrow(datos_final)-1, 2]

if (último > penúltimo) {
  
  info = 'subió'
  
} else if (último == penúltimo) {
  
  info = 'se mantuvo igual'
  
} else {
  
  info = 'bajó'
  
}



informe_inflación = paste('La inflación', info, 'respecto al mes anterior'); informe_inflación


#### ifelse ####

vector_2 = sample(1:10, 5); vector_2 
vector_media_2 = mean(vector_2); vector_media_2

ifelse(vector_media_2 >= 5, 'Números grandes', 'Números pequeños')




