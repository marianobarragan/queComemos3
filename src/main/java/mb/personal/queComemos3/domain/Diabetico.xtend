package mb.personal.queComemos3.domain

class Diabetico implements CondicionPreexistente{
	
	override esValido(Usuario usuario) {
		(usuario.sexo == "hombre" ||  usuario.sexo == "mujer") &&
		usuario.tieneAlgunaPreferencia  
	}
	
	override esSaludable(Usuario usuario) {
		usuario.tieneRutina(Rutina.ACTIVA) || usuario.peso < 70.00
	}
	
}