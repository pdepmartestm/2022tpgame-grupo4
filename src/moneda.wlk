import wollok.game.*
import juego.*

class Moneda {
	
	var image = "assets/moneda.png"
	var valor = 1
	const position
	
	method agarrarMoneda() {
		caballero.aumentarPuntaje()
		
		game.removeVisual(self)
		juego.generarMoneda(valor)
		juego.generarMoneda(valor*2)
	}
	
	
	method image() = image
	method animarse(){}
	method position() = position
	
	
	
	
	
}
