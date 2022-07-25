#=========================================================================================================#
#                         Unidad de Inform?tica - Facultad de Ciencias Económicas
#                                Curso Libre Programación básica en Python y R 2022-1
#                                   Sesi?n 4: Operadores lógicos
#                                   Monitor: Juan Felipe Acevedo Pérez                                
#=========================================================================================================#


#====================#
#### 1. Bucle for ####
#====================#

#### 1.1. Sintaxis for sencillo ####

# Que imprima en la consola cada número
for (i in 1:20) {
  
  print(i)
  
}

# Que imprima en la consola el doble de cada número
for (numero in 1:20) {
  
  print(numero*2)
  
}

# Que imprima en la consola el doble de cada número, pero con un mensaje
for (i in 1:20) {
  
  print(paste('El valor de ', i, ' multiplicado por 2 es ', i*2, sep = ''))
  # La función paste sirve para combinar caracteres con objetos numéricos. De esta manera obtenemos un mensaje que
  # tendrá una parte fija y una parte que variará con el iterador.
  # Se está indicando que presente el valor del número en el cual va el iterador, que explique que se va a multiplicar
  # ese número por dos, que muestre el resultado (en la función se especifica el procedimiento), y el parámetro 'sep = '
  # sirve para indicar que no separe cada argumento de la función con espacios.
}


#### 1.2. Sintaxis for anidado. Ejemplo: Tabla de multiplicar ####

for (i in 1:10) {
  print('------------')
  print(paste('Tabla del', i))
  
  for (j in 1:10) {
    
    print(paste(i, 'x', j, '=', i*j))
    
  }
  
}



#### 1.3. Ejemplo aplicado: Interpolación ####

# Creación de datos de ejemplo
datos_acciones = data.frame(Fecha = seq(from = as.Date('2021-1-1'), to = as.Date('2021-1-12'), by = 'day'),
                            CO = c(0.23, 0.36, NA, 0.41, 0.49, NA, NA, 0.7, 1.6, 1.62, 1.87, 1.93),
                            US = c(0.7, 0.4, 0.85, 0.99, 1.5, NA, NA, 2.22, 2.3, 2.31, 2.46, 3),
                            JP = c(0.51, 0.53, 0.69, NA, 0.86, 0.92, NA, NA, 1.65, 1.72, 1.96, 1.97))
view(datos_acciones)

# Visualizar los datos vacíos en las series
plot(datos_acciones[,2], type = 'l', main = 'Colombia')
plot(datos_acciones[,3], type = 'l', main = 'Estados Unidos')
plot(datos_acciones[,4], type = 'l', main = 'Japón')

# Función para interpolar
approx(datos_acciones[,'CO'], n=nrow(datos_acciones)) # Ejemplo con Colombia
approx(datos_acciones[,2], n=nrow(datos_acciones))$y # Obtener únicamente los valores que necesitamos

# Verificación de la interpolación
plot(datos_acciones[,2], type = 'l', col = 'blue', main = 'Colombia')
lines(approx(datos_acciones[,2], n=nrow(datos_acciones)), type = 'l', col = 'red')

# Bucle para automatizar el proceso
colnames(datos_acciones)
paises = colnames(datos_acciones[,-1]) # Vector con los nombres de los países
datos_inter = data.frame(datos_acciones[,1]) # Dataframe únicamente con la fecha, que se irá llenando con la información del bucle

for (i in paises) {
  
  inter = approx(datos_acciones[,i], n = nrow(datos_acciones))$y
  datos_inter = cbind(datos_inter,inter)
  
}



view(datos_inter) # Ver el resultado
colnames(datos_inter) = c('Fecha', paises) # Renombrar las variables
view(datos_inter) # Verificar el dataframe final

# Verificación visual
plot(datos_acciones[,2], type = 'l', col = 'blue', main = 'Colombia')
lines(datos_inter[,2], type = 'l', col ='red')
plot(datos_acciones[,3], type = 'l', main = 'Estados Unidos')
lines(datos_inter[,3], type = 'l', col ='red')
plot(datos_acciones[,4], type = 'l', main = 'Japón')
lines(datos_inter[,4], type = 'l', col ='red')




#=======================#
#### 2. Bucle While  ####
#=======================#


#### 2.1. Sintaxis bucle While ####

i = 1

while (i < 10) {
  
  print(i)
  i = i+1
  
}


# Break
i = 1

while (i < 10) {
  
  print(i)
  i = i+1
  if (i == 6) {
    
    break
    
  }
  
}



# Next
i = 1

while (i <= 10) {
  
  if (i %% 2 == 0) {
    
    i = i + 1
    next # Next sirve para ignorar
    
  }
  
  print(i)
  i = i + 1
  
}


# Dos contadores
suma = 0
i = 1

while (i <= 10) {
  
  suma = suma + i
  print(suma)
  i = i + 1
  
}

#==============================##
#### 3.Crear funciones en R ####
##============================##

# = Partes de una función en R = #

## Entradas o argumentos: 
# sirven para ingresar 
# información necesaria para realizar el procedimiento. 
# puede tener o no argumentos de entrada

##Cuerpo: 
#está formado por un conjunto de instrucciones
#Si hay varias instrucciones, deben ir entre llaves { }.

## Salidas:
#son los resultados de la función. 
#Toda función debe tener al menos un resultado.



#Crear una función definiendo los argumentos y la expresión

# def suma(x,y):
suma <- function(x, y) {
  resultado <- x + y
  return(resultado)
}

suma(10,12)

Mi.funcion <- function(x,y,z,j=3){
  w = x^2 + y^2 + z + j
  return(w)
}

#Evaluar la función para ciertos valores de los argumentos
suma(x=4, y=6)

Mi.funcion(2,3,10,1)
Mi.funcion(c(1:10),c(1:10),c(1:10))

# función más elaborada: construya una funci?n que imprima si la suma de los elementos
# de un vector es par o impar y que retorne la suma de los elementos del vector

funcion_2 = function(vect)
{
  
  suma = 0
  for (i in vect)
  {
    suma = suma + i    
  }
  if (suma %% 2 == 0){
    print("La suma de los elementos del vecotr es par")
  }else{
    print("La suma de los elementos del vecotr es impar")
  }
  return(suma)
  
}

vect_prueba = c(0, 2, 4, 5, 7)
respuesta = funcion_2(vect_prueba)
respuesta


