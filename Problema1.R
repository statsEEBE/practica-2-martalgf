#Codigo para problema 1

#a) Coeficiente de determinación
Rsq <- 0.1923 #Busco R^2 en los datos que me dan -> Multiple R-squared

#b)Coeficiente de corelación
cor <- sqrt(Rsq) #Hago la ráiz cuadra de R^2
cor

#c) Que variación espariamos del vaor del mercado para un augmento de 1 unidad de los activos = pediente recta regresión
#Activos = x
m <- 0.0658 # Pendiente = assets

#d) valor de y cuando me dan x
b <- 11.798 # Intercept = punto de corte
x <- 647.1 #El valor de x que me dan
m*x+b
