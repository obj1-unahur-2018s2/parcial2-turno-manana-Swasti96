import viajes.*
import socios.*
class ClasesDeGim {
	
	var property idiomasQueUsan = "Español"
	
	method implicaEsfuerzo(){
		return true
	}
	method diasQueLleva(){
		return 1
	}
	method sirveParaBroncearse(){
		return false
	}
	method recomendar(socio){
		return socio.edad().between(20,30)
	}
}
