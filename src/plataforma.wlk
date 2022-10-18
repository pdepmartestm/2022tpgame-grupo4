import wollok.game.*
import juego.*


class plataforma {
	
	var image = "assets/plataforma.png"
	const position 
	
	
	method moverPlataforma(){}
	
	method aparecer(){
		position = juego.posicionAleatoria()
		game.addVisual(self)
		game.schedule(10000,{self.desaparecer()})	
	}
	
	method desaparecer() {
		if(game.hasVisual(self)){
			game.removeVisual(self)
		    game.removeTickEvent("acercarse")
		}
	}
	
	
	method image() = image
	method animarse(){}
	method position() = position
	
	
	
}
