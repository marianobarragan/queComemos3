package mb.personal.queComemos3.domain

class Celiaco implements CondicionPreexistente{
	
	override esValido(Usuario usuario) {
		true
	}
	
	override esSaludable(Usuario usuario) {
		true
	}
	
}