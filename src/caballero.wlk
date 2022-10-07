import wollok.game.*


object caballero {
	
	var image = "assets/cab01.png"
	var position = game.origin()
	var monedas =0
	
	
	method agarrar (moneda){
		monedas = monedas +1;
		
		
	}
	method caminar(){
		position = position.right()
		
	}
	
	
	method saltar(){
		self.subir()		
		game.schedule(800,{self.caer()
			
		})
		
	}
	
	method subir(){
		
		position = position.up(1)
		
	}
	
	method caer(){
		position = position.down(1)
		
	}
	
	method position(){
		return position
	}
	
	method position(nueva){
		position = nueva
		
	}
	
	method image() = image
	
	
	
	
	
}


object juego{
	
	method iniciar(){
		
		game.height(10)
		game.width(15)
		game.addVisualCharacter(caballero)
		game.boardGround("assets/fondo.png")
		
		
		keyboard.z().onPressDo{caballero.saltar()}
		game.start()
		
	}
	
}