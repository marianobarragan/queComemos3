package mb.personal.queComemos3.domain

interface CondicionPreexistente {
	def boolean esValido(Usuario usuario)
	
	def boolean esSaludable(Usuario usuario)
	
}