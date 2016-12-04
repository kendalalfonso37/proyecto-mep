# Proyecto de MEP115: Procesos estocasticos con renovacion
# Autores: 
#
# Grupo: Los Renegados
#
# Gonzalez Ambrocio, Mario Abdiel   GA12015
# Marin de la O, Bryan Humberto     MD13015
# Sosa Montes, Kendal Alfonso       SM13001
# 
# Enunciado propuesto: Observar la existencia de botes de cafe en la familia Marín
# a los 4 dias y a la semana de compra de los mismos.
# 

# Inicio
# Matriz de probabilidades del cafe y su existencia en la familia Marín:
# Este script es para una solucion bastante particular para un modelo
# de colas usando cadenas de markov para los estados para los cambios de tiempo
# Si desea aplicar esta solucion puede cambiar la matriz de transiciones
# segun las probabilidades que mas le convenga usar.
#

# La matriz de transicion esta definida de la siguiente forma:
# Las filas representan los estados de los dias que durara el cafe, los cuales son:
# 1: que dure el bote en 1 dia, 2: que dure un bote en 2 dias
# 3: Que dure un bote en 3 dias, 4: Que dure un bote en 4 dias
# mencionar que la matriz representa un sistema de colas los cuales son botes de cafe

P <- matrix(c(0.35, 0.30, 0.20, 0.15,
              0.30, 0.30, 0.20, 0.20,
              0, 0.65, 0.25, 0.10,
              0, 0, 0.85, 0.15), nrow = 4, ncol = 4, byrow = TRUE)

# Mostrar la matriz de transicion en el tiempo t=0
print("La matriz siguiente representa una cadena de markov de una cola de botes de cafe para la familia Marin")
print("Matriz de probabilidades de la compra de cafe de la familia Marin:")
print(P)

# El tiempo de transicion que haremos es a los 4 dias, que es el momento en que 
# comienza la renovacion, por lo tanto a los 4 dias tendremos un "Reabastecimiento"
# de cafe en la casa de la familia Marin: Realizaremos una transicion a los 4 pasos:

P1 <- P %*% P
P2 <- P1 %*% P
P3 <- P2 %*% P
P4 <- P3 %*% P

# Muestra de los resultados a los primeros 4 dias:
print("Matriz de probabilidades de la compra de cafe de la familia marin a los 4 dias: ")
print(P4)

# Primera renovacion de cafe:
P5 <- P4 %*% P
P6 <- P5 %*% P
P7 <- P6 %*% P

# Muestra de las probabilidades de que haya cafe a los 7 dias en casa de la familia marin:
print("Matriz de probabilidades de la compra de cafe de la familia Marin a los 7 dias: ")
print(P7)

# La solucion es aparentemente sencilla puesto que hemos tratado el enunciado por medio 
# de cadenas de markov, en lugar del proceso engorroso de calcular funciones de densidad
# de probabilidad que, de paso, tienen que realizar convolucion por medio de la funcion
# de densidad de poisson. y como observamos, logicamente a los 7 dias se estabilizara
# la existencia de compra de botes de cafe en la familia Marin, Esta solucion tambien es 
# Aplicable a cualquier sistema de colas que tenga procesos de renovacion, por ejemplo:
# un Banco en el que las entradas tengan un comportamiento exponencial.
