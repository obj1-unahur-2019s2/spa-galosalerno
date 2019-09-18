import personas.*

object spa {
	var property personasAtendidas=[]
	
	method atender(persona) {
		if(persona == personasAtendidas.last({x=>x})){
		persona.recibirMasajes()
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
		personasAtendidas.add(persona)
		}
		else {
			persona.recibirMasajes()
			persona.darseUnBanioDeVapor()
			personasAtendidas.add(persona)}
	}
}
	
	
