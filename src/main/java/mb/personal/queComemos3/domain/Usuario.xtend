package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

class Usuario {
	
	@Accessors String nombre
	@Accessors String sexo
	@Accessors float peso
	@Accessors float estatura
	@Accessors Rutina rutina
	@Accessors List<CondicionPreexistente> condicionesPreexistentes
	
	def float indiceMasaCorporal(float peso, float estatura)
	{
		return peso / (estatura * estatura)
	}
	
	def boolean esValido(){
		tieneCamposObligatorios && cumpleCondicionesPreexistentes
	}
	
	def boolean cumpleCondicionesPreexistentes() {
		condicionesPreexistentes.forall[it.esValido(this)]
	}
	
	def boolean tieneCamposObligatorios() 
	{
		nombre.length > 0 &&
		peso >0 &&
		estatura > 0 &&
		rutina != null
	}
	
	def boolean tieneAlgunaPreferencia() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}