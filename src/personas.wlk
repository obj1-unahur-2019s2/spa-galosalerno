
object olivia {
	var gradoDeConcentracion = 6
	method recibirMasajes(){gradoDeConcentracion += 3}
	method discutir(){gradoDeConcentracion-=1}
	method gradoDeConcentracion(){return gradoDeConcentracion}
	method darseUnBanioDeVapor(){}		// NO HACE NADA, PERO SE NECESITA EL POLIMORFISMO PARA QUE FUNCIONE.
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var property nivelDeContractura = 0
	var property pielGrasosa = false
	method recibirMasajes() {return if(nivelDeContractura>1){nivelDeContractura-=2} else {nivelDeContractura=0} }
	method darseUnBanioDeVapor() {pielGrasosa = false }
	method comerseUnBigMac() { pielGrasosa = true }
	method bajarALaFosa() { pielGrasosa = true ; nivelDeContractura+=1 }
	method jugarAlPaddle() { nivelDeContractura+=3 }
	
	method diaDeTrabajo() { 
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}






