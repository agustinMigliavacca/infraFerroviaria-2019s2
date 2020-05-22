class VagonesDePasajeros {
	var tieneBanio = true
	var estaOrdenado = true
	var ancho = 0
	var largo = 0
	var pasajeros = 0
		method cargaMaxima() {
			if(tieneBanio) {
				return 300
			}
			else { return 800 }
		}
		method pasajeros() {
			return pasajeros
		}
		method PesoMaximoVagon() {
			return 2000 + 80 * pasajeros + self.cargaMaxima()
		}
		method largo() {
			return largo	
		}
		method nLargo(metros) {
			 largo = metros
		}
		
		method ancho() {
			return ancho
		}
		
		method nAncho(metros) {
			ancho = metros
		}
		
		method tieneBanio() {
			return tieneBanio
		}
		
		method noTieneBanio() {
			tieneBanio = false
		}
		
		method estaOrdenado() {
			return estaOrdenado 
		}
		method noEstaOrdenado(n) {
			estaOrdenado = n
		}
		
		
		method cantidadDePasajeros() {
			if(ancho <= 3) {
					 pasajeros = 8 * largo
			}
			 if(ancho > 3 ) {
				 pasajeros = 10 * largo
			}
			 if(not estaOrdenado ){
				 pasajeros = pasajeros - 15
			}
			
			return pasajeros
			
		}
		
		
		
	
}

class VagonesDeCarga {
	var maderasSueltas = 0
	var cargaMaxima = 0
	method cantidadDePasajeros() {
		return 0
	}
	method decirCargaMaxima(n) {
		cargaMaxima = n
	}
	
	method tieneBanio() {
		return false
	}
	method cargaMaxima() {
	 	return	cargaMaxima  - maderasSueltas * 400
	}
	method maderas(n) {
		maderasSueltas = n
	}
	
	method maderasSueltas() {
		return maderasSueltas 
	}
	method PesoMaximoVagon() {
		return 1500 + cargaMaxima		
	}
}

class VagonesDormitorio {
	var compartimientos = 0
	var camas = 0
	method compartimientos() {
		return compartimientos
	}
	method dameCompartimientos(n) {
		compartimientos = n
	}
	method dameCamas(n) {
		camas = n
	}
	method camas() {
		return camas
	}
	
	method cantidadDePasajeros() {
		return compartimientos * camas
	}
	
	method tienebanio() {
		return true
	}
	method cargaMaxima() {
		return 1200
	}
	
	method pesoMaximoVagon() {
		return 4000 + 80 * self.cantidadDePasajeros() +
		self.cargaMaxima()
	} 
}