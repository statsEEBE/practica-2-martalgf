#Codigo para problema 2
mis_dades <- iris #Comando para definir una variable
mis_dades
y <- mis_dades$Sepal.Length # El $ para extraer una de las columnas de datos
x <- mis_dades$Petal.Length

plot(x,y) #Importante introducir las variables x e y con ctrl+enter

x_bar <- mean(x) #Promedio de x
y_bar <- mean(y) #Promedio de y

#a) Pendiente rectra regresión
m <- sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)
m
#b) Punto de corte eje recta de regresión
b <- y_bar - m*x_bar
b
# Forma rápida de buscar pendiente y punto de corte
mod <- lm(y~x) # m = Intercept y b = x
mod
summary(mod)
#c) Buscar eñ valor de y cuando me dan x
#Forma 1
m*1.5+b #Uso la recta de regresión para encontrar y cuando me dan x
#Forma 2
y_pred2 <- predict(mod, data.frame(x=1.5))
y_pred2

#Dibujar la línia de regresión encima del plot
x_pred <- x
y_pred <- m*x_pred+b
plot(x,y)
lines(x_pred,y_pred)

#Coeficiente de deteminación (R^2)

Rsq <- sum((y_pred-y_bar)^2)/sum((y-y_bar)^2)
Rsq

#Coeficiente de corelación (R)
cor <- sqrt(Rsq) #Manera 1
cor
cor.test(x,y) #Manera 2


