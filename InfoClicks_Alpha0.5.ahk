; Infoclicks

raton := ["izq", "der"] ;Creo un objeto raton que contiene los botones del mouse, de momento dos para probar...

raton.izq := 0 ; A continuación inicializo los botones del raton
raton.der := 0

c_i := 0 ; Esta variable va a ser para mostrar en el send final en el notepad, para clics izquierdos
c_d := 0 ; Igual que la anterior pero para derecho

;salida := 0 variable opcional por si hacia un ciclo while, pero esto funciona muy tuanis y tengo que pensar que esta siempre ahi como un while constante....creo

MsgBox Bienvenid@ a Infoclicks para ver los resultados presioná Shift + v
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
	Gui, Add, Text, x12 y49 w100 h30 , Boton Izquierdo
	Gui, Add, Text, x162 y49 w100 h30 , Boton Derecho
	Gui, Add, Edit, x12 y79 w100 h30 , %c_i%
	Gui, Add, Edit, x162 y79 w100 h30 , %c_d%
	Gui, Add, Button, x82 y169 w100 h30 , Salir
	Gui, Show, w279 h253, InfoClicks 0.5
return
	
 ButtonSalir:
 GuiClose:
ExitApp