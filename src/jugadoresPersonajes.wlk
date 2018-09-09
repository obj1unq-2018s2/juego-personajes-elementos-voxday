object luisa {
	var personajeActivo = noHayPersonaje
	method aparece(elemento){	
		personajeActivo .encontrar(elemento)
		
	}
	
	method asignarPersonaje(personaje){
		personajeActivo = personaje
	}	
}


object floki {
	var arma
	
	method darArma(unArma){arma = unArma}
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    } else {
	    	self.error() ""
	    }
	}
}

object jabalina {
	var potencia = 30
	var carga = 1 
	method potencia() {
		return potencia 
	}
	method estaCargada (){
		
		return (carga  == 1)
	}
	method registrarUso(){
		carga = 0
	}
	
}

object ballesta{
	const potencia = 4 
	var flecha = 10
	method estaCargada(){
		return  (flecha > 0  )	
	}
	method potencia()
  {
	return potencia 
  }
  method registrarUso(){
  	flecha = flecha -1 
  }
 } 
 

object castillo {
	const  altura = 20
	var property  defensa = 150
	method recibirAtaque(valor){
		defensa = defensa - valor
	}
	method altura(){
		return altura 
	}
	method recibirTrabajo(){
		defensa =(defensa +20).min(200)
	}
	method valorQueOtorga(){
		return defensa/5
	}
}

object aurora {
	const altura = 1
	var vive = true 
	method morir(){
		vive = false
	}
	method recibirAtaque(valor){
		if( valor >= 10 ){
			self.morir()
		}
		}
	method recibirTrabajo(){
		
	}
	method valorQueOtorga(){
		return 15
	}
	}
	
object tipa{
	var property altura = 8
	method recibirAtaque(valor){
		
	}
	method recibirTrabajo(){
		altura = altura + 1		
	}
	method valorQueOtorga(){
		return altura * 2
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado 
	
	
	method encontrar(elemento) {
	   valorRecolectado  += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElementoEncontrado = elemento
	}
	
    method esFeliz(){
    	return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
    }
    method valorRecolectado(){
    	return valorRecolectado
    }
    
    }


object noHayPersonaje {
	// no hace falta ponerle ningÃºn mÃ©todo, es solamente para marcarle a Luisa que no tiene ningÃºn personaje activo
}
