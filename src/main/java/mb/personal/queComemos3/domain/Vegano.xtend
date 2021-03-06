package mb.personal.queComemos3.domain

import java.util.List
import java.util.Arrays

class Vegano implements CondicionPreexistente{
	
	private List<String> palabrasClave =  Arrays.asList("pollo", "carne", "chivito", "chori")
	override esValido(Usuario usuario) {
		//las preferencias del usuairo no contienen ninguna palabraClave
		!usuario.preferencias.containsAll(palabrasClave)
	}
	
	override esSaludable(Usuario usuario) {
		usuario.leGusta("frutas")
	}
	
}