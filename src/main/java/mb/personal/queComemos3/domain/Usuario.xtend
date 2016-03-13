package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors

class Usuario {
	
	@Accessors String nombre
	@Accessors String sexo
	@Accessors float peso
	@Accessors float estatura
	@Accessors t_rutina rutina
	
	def float indiceMasaCorporal(float peso, float estatura){
		return peso / (estatura * estatura)
	}
	
	def boolean esValido() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}