# Simulación Series Temporales

mu  <- 0         # Media o intercepto
var <- 1         # Varianza de las innovaciones
sd  <- sqrt(var) # Desviación estándar de las innovaciones 
phi <- 0.5       # Coefficiente de autoregresion - inercia

N   <- 200       # Número de observaciones  

# Simular serie temporal con media 0
tmp <- arima.sim(n = N, model = list(ar = phi), sd = sd)
# Agregar media ---> mover la serie temporal verticalmente
tmp <- tmp + mu 

# Gráfico

ts.plot(tmp, ylab = "Afecto positivo", xlab = "Día", lwd = 2)
abline(h = mu, col = "red", lty = 2, lwd = 1.5)

#### Fin ####
