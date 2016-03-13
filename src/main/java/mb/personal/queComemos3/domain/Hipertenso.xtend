package mb.personal.queComemos3.domain

class Hipertenso implements CondicionPreexistente {
	
	override esValido(Usuario usuario) {
		usuario.tieneAlgunaPreferencia
	}
	
}