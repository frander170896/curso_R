#inicio del curso 

# primero se instala la dependecias de data.table
install.packages("data.table")
?data.table

# por ejemplo del curso haremos uso de un dataset llamado mtcars
mtcars
?mtcars #con la sentencia ?mtcars nos mostrara la información del dataset
class(mtcars) # con la función class podemos observar a que clase pertence el dataset
DTmtcars <- as.data.table(mtcars) #con esta sentencia se asigna el dataset de tipo data.frame a un data.table
class(DTmtcars)
DTmtcars

# EJEMPLO: DE LOS CARROS QUE TIENEN UN CONSUMO SUPERIOR A 15, SE QUIERE OBTENER LA 
#LA MEDIA DE LOS CABALLOS DE FUERZA (HP) Y DEL PESO Y SE QUIERE AGRUPAR POR 
#CILINDRADA.

DTmtcars [mpg > 15,
          .(media_hp = mean(hp),media_wt = mean(wt)),
          by = cyl]


# de la siguiente manera se cra un vector
DT <- data.table(a = 1:5,b= c("a","b","c"),c=rnorm(5),D=FALSE)
DT

#Operaciones con data.table
#seleccionamos filas
DT[1:2]

#Seleccionamos filas y columnas
DT[1:2,3:4]
DT[,c("a","b")]
DT[,.(a,b)]

# para contar
DT[,.N,by=b]
DT[,.N,by=.(a,b)]
DT[,.N]

# Encadenamiento
a<- DT[,.N,by=.(a,b)]
a[order(b)]

DT[,.N,by=.(a,b)][order(b)]

# Ejercicio 1 del curso 
# se va a trabajar con el data set iris

iris
?iris
class(iris)
DTiris <- as.data.table(iris)
class(DTiris)

# se debe buscar la media de cada caracteristica por especie
DTiris[,.(media_sl = mean(Sepal.Length),
          media_sw = mean(Sepal.Width),
          media_pl = mean(Petal.Length),
          media_pw = mean(Petal.Width)),
       by = Species]

#una manera de mejorar el ejercio anterior es con el uso de .SD Y SdCols
DTiris[,lapply(.SD,mean),by=Species]
DTiris[,lapply(.SD,mean),by=Species,.SDcols=c("Sepal.Length","Sepal.Width")]
DTiris[,lapply(.SD,mean),by=Species,.SDcols=c(1,2)]

# crear datos por referencia y crear columna para data set existente
DTiris[Sepal.Length >= 5, Sepal.Length.tam := "Grande"]
DTiris[Sepal.Length < 5, Sepal.Length.tam := "Peque"]

# eliminar columna por referencia
DTiris[, Sepal.Length.tam := NULL]













