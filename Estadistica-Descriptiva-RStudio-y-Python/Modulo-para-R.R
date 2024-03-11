# Pregunta 1
### Crear un vector con la sucesión de números del -10 al 27
Harry <- seq(-10, 27) # nolint: object_name_linter.
### Le pedimos la posición 7 del vector
cat("El valor del vector en la posicion 7 es: ", Harry[7], "\n") 

# Pregunta 2
### Definir la función para calcular el valor de la sucesión
funcion_sucesion <- function(n) {
  100 * 2^n - 7 * 3^n
}

### Calcular la sucesión para n = 0, ..., 200
valores_sucesion <- sapply(0:200, funcion_sucesion)

### Encontrar el índice del máximo valor
indice_maximo <- which.max(valores_sucesion)

### Mostrar el valor máximo
valor_maximo <- valores_sucesion[indice_maximo]

### Mostrar el resultado
cat("El máximo de la sucesión se alcanza en n = ", indice_maximo, "\n")
cat("El valor máximo es: ", valor_maximo, "\n")

# Pregunta 3
### Crear un vector con la sucesión de números del 0 al 40
numeros <- seq(0, 40)

### Definir la función para calcular el valor de la sucesión
funcion_sucesion <- function(n) {
  3 * 5^n - 1
}

### Calcular la sucesión para n = 0, ..., 40
x <- sapply(numeros, funcion_sucesion)
### Seleccionar los elementos de x que son mayores a 3.5
x_mayores_3_5 <- x[x > 3.5]
### Mostrar el subvector
print(x_mayores_3_5)

# Pregunta 4
numero_complejo <- function(z) {
### Extraer parte real e imaginaria
re <- Re(z)
im <- Im(z)
  
### Calcular módulo y argumento
modulo <- round(Mod(z), 2)
argumento <- round(Arg(z), 2)
  
### Calcular conjugado
conjugado <- complex(real = re, imaginary = -im)
  
### Crear vector con los resultados
resultado <- c(re, im, modulo, argumento, conjugado)
names(resultado) <- c("Parte real", "Parte imaginaria", "Módulo", "Argumento", "Conjugado")
  
return(resultado)
}

print(numero_complejo(3+4i))

# Pregunta 5

resolver_ecuacion_2grado <- function(A, B, C) {
### Calculamos el discriminante
discriminante <- B^2 - 4 * A * C
  
### Verificamos si tiene soluciones reales
if (discriminante < 0) {
  mensaje <- "La ecuación no tiene soluciones reales"
  soluciones <- NA
} else {
### Calculamos las soluciones
  x1 <- (-B + sqrt(discriminante)) / (2 * A)
  x2 <- (-B - sqrt(discriminante)) / (2 * A)
  soluciones <- c(x1, x2)
  mensaje <- "Las soluciones son:"
}
  
### Creamos un vector con los resultados
resultado <- c(mensaje, soluciones)
names(resultado) <- c("Mensaje", "Solución 1", "Solución 2")
  
  return(resultado)
}

print(resolver_ecuacion_2grado(1, -5, 6))

