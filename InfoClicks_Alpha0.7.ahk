; Infoclicks
	
	Gui, Color, 45577C
	
	Gui, Add, Button,Border Center x12 y49 w100 h25 , Botón Izquierdo
	Gui, Add, Button,Border Center x162 y49 w100 h25 , Botón Derecho
	
	Gui, Add, Text, x42 y168 w200 h30 , Presiona la tecla Inicio para resetear
	Gui, Add, Button, x82 y200 w100 h30 , Salir
	Gui, Show, w279 h253, InfoClicks 0.7
	
raton := ["izq", "der"] ;Creo un objeto raton que contiene los botones del mouse, de momento dos para probar...

raton.izq := 0 ; A continuación inicializo los botones del raton
raton.der := 0

c_i := 0 ; Esta variable va a ser para mostrar en el send final en el notepad, para clics izquierdos
c_d := 0 ; Igual que la anterior pero para derecho

	
~LButton::							;Cada vez que se presiona el boton izq del mouse le suma +1 y se le asigna a la variable correspondiente del send
	raton.izq := raton.izq += 1
	c_i := raton["izq"]	
	Gui, Font, s18, w40
	Gui, Add, Edit, ReadOnly -Multi x12 y89 w100 h55 , %c_i%
return

~RButton::
	raton.der := raton.der += 1
	c_d := raton["der"]
	Gui, Add, Edit, ReadOnly -Multi x162 y89 w100 h55 , %c_d%
return

Home::

raton.izq := 0 
raton.der := 0
c_i := 0 
c_d := 0 

Gui, Add, Edit, ReadOnly -Multi x12 y89 w100 h55 , %c_i%
Gui, Add, Edit, ReadOnly -Multi x162 y89 w100 h55 , %c_d%
return
	
 ButtonSalir:
 GuiClose:
ExitApp