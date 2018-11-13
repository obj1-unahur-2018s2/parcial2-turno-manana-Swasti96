import viajes.*
import gimnasia.*

class Socios {
	
	var actividades = [] 
	var property maximoDeActividades = 0
	var property edad
	var idiomasQueUsan = []
	
	method registrarActividades(act){
		if(actividades.size() < self.maximoDeActividades()){
			actividades.add(act)
		}
		else self.error("Error,supera el limite")
	}
	method esAdoradorDelSol(){
		return actividades.all({a=>a.sirveParaBroncearse()})
	}
	method actividadesForzada(){
		return actividades.filter({a=>a.implicaEsfuerzo()})
	}
	
	method agregarIdiomas(idioma){
		idiomasQueUsan.add(idioma)
	}
	method idiomasQueUsan(){
		return idiomasQueUsan
	}	
}

class SociosTranquilos inherits Socios { 
	
	 method leAtraeLaActividad(a){
		return actividades.any({actividad=>a.diasQueLlevaElViaje() > 4})
	}
}

class SociosCoherentes inherits Socios { 
	
	 method leAtraeLaActividad(a){
		return actividades.any({actividad=>a.sirveParaBroncearse() or a.implicaEsfuerzo()})
	}
}

class SociosRelajados inherits Socios { 
	
	 method leAtraeLaActividad(actividad){
		return  idiomasQueUsan.any({a=>actividad.idiomasQueUsan().contains(a)})
	}
}
