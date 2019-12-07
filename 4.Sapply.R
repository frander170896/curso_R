#Iniciaremos con la explicación del uso de sapply
#la diferencia que existe entre lapply y sapply es que lapply
#trabaja con una lisga del mismo tipo de dato y sapply pude trabajar con
#convinaciones de tipos de datos 

ciudades <- list(ciudades = c("Barcelona","Roma","Paris"),
                 capitales = c(FALSE,TRUE,TRUE))

for(ciudad in ciudades){
  print(class(ciudad))
}

#se inicia con el uso de lapply
sapply(ciudades, class)

#si se desea convertir la lista retornada en un vector 
unlist(sapply(ciudades, class))

for(ciudad in ciudades$ciudades){
  print(nchar(ciudad))
}
sapply(ciudades$ciudades, nchar)
sapply(ciudades$ciudades, nchar,USE.NAMES = F)
