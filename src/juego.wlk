import wollok.game.*
import moneda.*
import plataforma.*


object juego{
	
	method iniciar(){
		
		game.height(11)
		game.width(20)
		game.addVisualCharacter(caballero)
		game.boardGround("assets/fondo.png")
		self.generarMonedas()
		self.generarPlataforma()
		
		keyboard.z().onPressDo{caballero.saltar()}
		game.start()		
		
	}
	
	method generarMonedas() {
		game.schedule(500,{self.generarMoneda(100)}) 
	}
	
	
	method generarMoneda(valor) {
		const pos = self.posicionAleatoria()
		const moneda = new Moneda(position = pos, valor = 1) 
		game.addVisual(moneda)
		moneda.animarse() 
	}
	
	method posicionAleatoria() = game.at(
		0.randomUpTo(game.width()),
		0.randomUpTo(game.height())
	)
	
	method terminar(){
		game.clear()
		game.addVisual(caballero)
		game.say(caballero,"Me mori")	
	}
	
	
	method generarPlataforma(){
		
		
		game.onTick(2000,"aparece",{new plataforma(position = 0).aparecer()}) 
		
		
		
	}
	
}



object caballero {
	
	var position = game.origin()
	var puntaje =0
	
	
	method aumentarPuntaje(){
		puntaje = puntaje +1;
		
		
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
		
		position = position.up(2)
		
	}
	
	method caer(){
		position = position.down(2)
		
	}
	
	method position(){
		return position
	}
	
	method position(nueva){
		position = nueva
		
	}
	
	method image(){
		return if (self.estaVivo())"assets/cab01.png" else "assets/muerto.png"
		
	}
	
	
	method estaVivo(){
		return 1==1
		
	}
	
	
}


