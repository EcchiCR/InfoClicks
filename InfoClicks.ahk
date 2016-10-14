; Infoclicks

raton := ["izq", "der"] ;Creo un objeto raton que contiene los botones del mouse, de momento dos para probar...

raton.izq := 0 ; A continuación inicializo los botones del raton
raton.der := 0

c_i := 0 ; Esta variable va a ser para mostrar en el send final en el notepad, para clics izquierdos
c_d := 0 ; Igual que la anterior pero para derecho

;salida := 0 variable opcional por si hacia un ciclo while, pero esto funciona muy tuanis y tengo que pensar que esta siempre ahi como un while constante....creo

MsgBox Bienvenid@ a Infoclicks para finalizar el programa y ver los resultados presioná Shift + v
return
	
~LButton::							;Cada vez que se presiona el boton izq del mouse le suma +1 y se le asigna a la variable correspondiente del send
	raton.izq := raton.izq += 1
	c_i := raton["izq"]
return

~RButton::
	raton.der := raton.der += 1
	c_d := raton["der"]
return

+v::
	Run notepad
	winactivate, Untitled - Notepad
    WinWaitActive, Untitled - Notepad
	send, se han hecho %c_i% clics con el boton izquierdo del mouse 
	Send, {Enter}
	send, se han hecho %c_d% clics con el boton derecho del mouse
	ExitApp
return
	

