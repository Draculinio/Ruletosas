DIM numeros(37) AS INTEGER
FOR i = 1 TO 37
    numeros(i) = 0
NEXT
INPUT "Cantidad de veces a jugar: ", cantidad%
FOR veces = 1 TO cantidad%
    resultado% = INT(RND * 36)
    PRINT (resultado%)
    numeros(resultado% + 1) = numeros(resultado% + 1) + 1
NEXT
cantidadEsperada% = cantidad% / 37
FOR i = 1 TO 36 STEP 3
    PRINT ("Numero " + STR$(i - 1) + ":" + STR$(numeros(i)) + " Numero " + STR$(i) + ":" + STR$(numeros(i + 1)) + " Numero " + STR$(i + 1) + ":" + STR$(numeros(i + 2)))
NEXT
PRINT ("Numero 36:" + STR$(numeros(36)))
PRINT ("Cantidad Esperada: " + STR$(cantidadEsperada%))
FOR i = 1 TO 36 STEP 3
    PRINT ("Diferencia Numero " + STR$(i - 1) + ":" + STR$(numeros(i) - cantidadEsperada%) + " Diferencia Numero " + STR$(i) + ":" + STR$(numeros(i + 1) - cantidadEsperada%) + " Diferencia Numero " + STR$(i + 1) + ":" + STR$(numeros(i + 2) - cantidadEsperada%))
NEXT
PRINT ("Diferencia Numero 36:" + STR$(numeros(36) - cantidadEsperada%))

