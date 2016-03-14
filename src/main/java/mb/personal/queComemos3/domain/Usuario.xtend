package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors 

class Usuario {
	
	String nombre
	String sexo
	float peso
	float estatura
	Rutina rutina
	List<CondicionPreexistente> condicionesPreexistentes
	List<String> preferencias = new ArrayList<String>
	
	def float indiceMasaCorporal()
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
		preferencias.size > 0
	}
	
	def boolean tieneRutinaSaludable() {
		(condicionesPreexistentes.size == 0 &&
			18 > indiceMasaCorporal()  &&
			indiceMasaCorporal() < 30
		) || (
			condicionesPreexistentes.forall[it.esSaludable(this)]
		)
	}
	
	def tieneRutina(Rutina rutina) {
		this.rutina == rutina
	}
	
	def leGusta(String string) {
		preferencias.contains(string)
	}
	
}