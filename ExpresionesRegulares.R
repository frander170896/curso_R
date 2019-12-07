#Expresiones regulares en R

dias <- c("Lunes..","Martes..","Miercoles..","Jueves..","Viernes","Sabado","Domingo")

#indica si el patron existe
?grepl

# para buscar alguna conicidencia en los datos, como un like en sql
grepl("a",dias)
# de esta manera se obtiene que datos del vector contienen la letra "a"
dias[grepl("a",dias)] 

# de esta manera se obtiene que datos del vector que no contienen la letra "a"
dias[!grepl("a",dias)] 

# se obtinen los que inician  por alguna letra
grepl("^M",dias)
dias[grepl("^M",dias)] 
dias[!grepl("^M",dias)] 

#se obtienen los datos que finalizan con alguna frase
grepl("s$",dias)
dias[grepl("s$",dias)]
dias[!grepl("s$",dias)]

#ahora usamos grep() esta funcion devuelve la posición de la lista 
#donde se encuentran las coincidencias
grep("a",dias)
dias[grep("a",dias)]

#ahora usaremos la funcion sub, esto con el fin de sustituir datos,
#en el caso de que necesitemos limpiar el dataset
sub("a","o",dias) #solo lo hace para la primera coincidencia de cada palabra
gsub("a","o",dias)#lo hace para todas las coincidencias

gsub("\\.","",dias)


# .*     cualquier caracter que coincida una o más veces
# \\s    un espacio
# [0-9]+ Numeros del 0 al 9 almenos una vez
# [A-Z]+ Mayusculas de A-Z almenos una vez







