# Proyecto de MEP115: Procesos de markov con Renovacion
# Autores: 
#
# Gonzalez Ambrocio, Mario Abdiel   GA12015
# Marin de la O, Bryan Humberto     MD13015
# Sosa Montes, Kendal Alfonso       SM13001
# 
# Enunciado propuesto: Observar la ocurrencia de compra
# de botes de cafe de la familia Marin y obtener los 
# resultados por medio de una aplicacion estadistica 
# para poder estudiar si este fenomeno cumple las 
# condiciones de un proceso de markov con renovacion


#Inicio

n <- 10 #Numero de elementos para la distribucion de poisson
lamb <- 1.5 #Tasa de cambios de cajas por unidad de tiempo

r<-dpois(n, lamb)
r
