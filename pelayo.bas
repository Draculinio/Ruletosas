INPUT "Cantidad de veces que voy a repetir el experimento: ", experimento%
DIM numeros(37, experimento%) AS INTEGER
FOR i = 1 TO 37
    FOR j = 1 TO experimento%
        numeros(i, j) = 0
    NEXT
NEXT

REM Experimento
INPUT "Cantidad de veces a jugar: ", cantidad%
FOR nroexp = 1 TO experimento%
    FOR veces = 1 TO cantidad%
        resultado% = INT(RND * 37)
        PRINT (resultado%)
        numeros(resultado% + 1, nroexp) = numeros(resultado% + 1, nroexp) + 1
    NEXT
NEXT

REM mostrar resultados por pantalla
cantidadEsperada% = cantidad% / 37
FOR nroexp = 1 TO experimento%
    FOR i = 1 TO 36 STEP 3
        PRINT ("Numero " + STR$(i - 1) + ":" + STR$(numeros(i, nroexp)) + " Numero " + STR$(i) + ":" + STR$(numeros(i + 1, nroexp)) + " Numero " + STR$(i + 1) + ":" + STR$(numeros(i + 2, nroexp)))
    NEXT
    PRINT ("Numero 36:" + STR$(numeros(37, nroexp)))
    PRINT ("Cantidad Esperada: " + STR$(cantidadEsperada%))
    FOR i = 1 TO 36 STEP 3
        PRINT ("Diferencia Numero " + STR$(i - 1) + ":" + STR$(numeros(i, nroexp) - cantidadEsperada%) + " Diferencia Numero " + STR$(i) + ":" + STR$(numeros(i + 1, nroexp) - cantidadEsperada%) + " Diferencia Numero " + STR$(i + 1) + ":" + STR$(numeros(i + 2, nroexp) - cantidadEsperada%))
    NEXT
    PRINT ("Diferencia Numero 36:" + STR$(numeros(37, nroexp) - cantidadEsperada%))
NEXT

REM escribir al archivo
OPEN "resultados.txt" FOR OUTPUT AS #1
PRINT #1, "Cantidad esperada: ", STR$(cantidadEsperada%)
FOR nroexp = 1 TO experimento%
    PRINT #1, "Nro. de experimento: " + STR$(nroexp)
    FOR i = 1 TO 37
        PRINT #1, "Nro. " + STR$(i - 1) + "-> Apariciones: " + STR$(numeros(i, nroexp)) + "/Diferencia con lo esperado: " + STR$(numeros(i, nroexp) - cantidadEsperada%)
    NEXT
NEXT
