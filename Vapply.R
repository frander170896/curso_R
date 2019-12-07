ciudades <- list(ciudades = c("Barcelona","Roma","Paris"),
                 capitales = c(FALSE,TRUE,TRUE))

for(ciudad in ciudades){
  print(class(ciudad))
}

#se inicia con el uso de lapply
vapply(ciudades, class,character(1))

?sapply
vapply(ciudades$ciudades, nchar,USE.NAMES = F,FUN.VALUE = integer(1))
vapply(ciudades$ciudades, nchar,FUN.VALUE = integer(1))
