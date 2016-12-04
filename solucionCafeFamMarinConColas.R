# Aplicacion de solucion del problema de la Familia Marin usando Colas de tipo M/M/1
# Solucion alternativa del proceso con renovacion simplificando la solucion utilizando
# teoria de colas para la misma.

# Cola con notacion M/M/1:
# lamb: Tasa de llegada a la cola (Entidades/tiempo)
# miu: Tasa de servicio del servidor (Entidades/tiempo)
# w: tiempo de espera del sistema
# wq: tiempo de espera de la cola
# l: numero esperado de clientes del sistema
# lq: numero esperado de clientes en la cola
# pn: Probabilidad de n clientes en el sistema.
# 

print("Tratamiento del proceso de renovacion de la compra de botes de la familia marin utilizando teoria de colas con notacion M/M/1:")
lamb <- 3/4 # Cafe/dias
miu <- 26/1 # Cafe/dias

rho <- lamb/miu

# Utilizacion de cafe por unidad de tiempo
print("Botes de cafe consumidos en la familia Marin por dia:")
print(rho)

#Numero promedio de botes de cafe en espera en la cola
wq <- (lamb)/(miu*(miu-lamb))
lq <- (lamb)*(wq)
print("numero promedio de botes de cafe en cola de espera: ")
print(lq)

# Numero promedio en el sistema
l <- (lamb)/(miu-lamb)
print("numero promedio de botes de cafe en cola: ")
print(l)

# Numero tiempo promedio de clientes en espera en fila
wq <- ((lamb)/(miu)*(miu-lamb))
print("numero tiempo promedio de botes de cafe en espera en fila: ")
wq

# Tiempo promedio de espera en el sistema, Incluido el tiempo de guardado en alacena:
l <- (lamb)/(miu-lamb)
w <- (1)/(miu-lamb)
tes <- w-l
print("Tiempo promedio de espera de consumo de botes de cafe incluido el tiempo de guardado: ")
print(tes)

# mas calculos: 
print("Calculos: ")
e <- 2.718281828
t <- 4/3
n <- 4

po <- (miu-lamb)/(miu)
print("Probabilidad de po:")
po
po <- (1-rho)
print("po:")
po
pn <- ((lamb/miu)^(n))*((miu-lamb)/(miu))
print("n: n botes de cafe  ")
n
print("Probabilidad de que exactamente n botes se encuentren en el sistema; pn:")
pn
pn <- ((rho)^(n))*(1-rho)
print("pn:")
pn
w <- 1/(miu-lamb)
print("Tiempo promedio en el sistema de colas; w:")
w
l <- (lamb)/(miu-lamb)
print("Numero promedio esperado en el sistema de colas; l:")
l
wq <- (lamb)/((miu)*(miu-lamb))
print("Numero promedio en la cola; wq: ")
wq
lq <- (lamb)*(wq)
print("Numero promedio esperado en la cola; lq:")
lq
Wq_t<-1-((lamb/miu)*(e)^(-(miu-lamb)*t))
print("Tiempo esperado en la cola para Wq(t); wq_t:")
Wq_t
P_wt<-(e)^(-miu*(1-(lamb/miu))*t)
print("Probabilidad de P(w>t); P_wt:")
P_wt
efic <- (w)/(w-wq)
print("Eficiencia del sistema: miu*lamb ")
efic

# Calculo de Pn para 7 botes de cafe:
n <- 7
pn <- ((lamb/miu)^(n))*((miu-lamb)/(miu))
print("n: n botes de cafe  ")
n
print("Probabilidad de que exactamente n botes se encuentren en el sistema; pn:")
pn

print("Datos validos para el sistema de colas de compra de tasas de cafe en la casa de la familia Marin; Si desea ajustar el programa puede realizarlo segun le convenga mejor con los datos de miu y lambda, Este programa tambien es aplicable a todos los problemas de colas con un comportamiento de M/M/1.")
