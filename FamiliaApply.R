#Uso de la familia apply
#son iteradores de datos.


#lapply
ciudades <- list(ciudades = c("Barcelona","Roma","Paris"),
                 capitales = c(FALSE,TRUE,TRUE))

for(ciudad in ciudades){
  print(class(ciudad))
}

#se inicia con el uso de lapply
lapply(ciudades, class)

#si se desea convertir la lista retornada en un vector 
unlist(lapply(ciudades, class))

#En el caso de que se quiciera saber el número de caracteres
#con for
for(ciudad in ciudades$ciudades){
  print(nchar(ciudad))
}
#con lapply seria de la siguiente manera
lapply(ciudades$ciudades, nchar )
unlist(lapply(ciudades$ciudades, nchar ))


#ahora aprenderemos a crar funciones para usar en lapply
precios <- list(seq(2,32, by=2))

multiplicaFactor <- function (x,factor,prueba){
  (x*factor) + prueba;
}

lapply(precios, multiplicaFactor,factor=2,prueba=1)



