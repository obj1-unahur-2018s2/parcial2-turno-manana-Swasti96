class Viajes {
	
	var idiomasQueUsan = [] 

	method implicaEsfuerzo()
		
	method sirveParaBroncearse()
	
	method agregarIdiomas(idioma){
		idiomasQueUsan.add(idioma)
	}
	method idiomasQueUsan(){
		return idiomasQueUsan
	}
	method esInteresante(){
		return idiomasQueUsan.size() > 1
	}
	method actividadRecomendada(socio){
		return self.esInteresante() and
		socio.leAtraeLaActividad(self) 	
	}
}

class ViajesDePlaya inherits Viajes {
	
	var property largoPlaya = 0
	
	method diasQueLlevaElViaje(){
		return largoPlaya/500
	}
	override method implicaEsfuerzo(){
		
		return largoPlaya > 1200
	}
	override method sirveParaBroncearse(){
		return true
	}
}

class ExcursionACiudad inherits Viajes { 
	
	var property cantAtracciones = 0
	
	method diasQueLlevaElViaje(){
		return cantAtracciones/2
	}
	override method implicaEsfuerzo(){
		return cantAtracciones.between(5,8)
	} 
	override method sirveParaBroncearse(){
		return false
	}
	override method esInteresante(){
		return super() and cantAtracciones == 5
	}
	
}
class ExcursionesTropical  inherits ExcursionACiudad{

	override method diasQueLlevaElViaje(){
		return super() + 1
	}	
	override method sirveParaBroncearse(){
		return true
	}
}

class SalidaDeTrekking	inherits Viajes {
	
	var property kilometrosDeSendero = 0
	var property diasDeSolPorAnio = 0
	
	method diasQueLlevaElViaje(){
		return kilometrosDeSendero/50
	}
	override  method implicaEsfuerzo(){
		return kilometrosDeSendero > 80
	}
	override method sirveParaBroncearse(){
		return diasDeSolPorAnio > 200 or diasDeSolPorAnio.between(100,200) and kilometrosDeSendero > 120
	}
	override method esInteresante(){
		return super() and diasDeSolPorAnio > 140
	}
}


	
	
