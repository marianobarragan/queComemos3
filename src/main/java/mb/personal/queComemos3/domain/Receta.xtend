package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList
import java.util.List

@Accessors

abstract class Receta {
	String nombre
	List<String> procedimiento = new ArrayList<String>
	List<Ingrediente> ingredientes = new ArrayList<Ingrediente>
	int calorias
	DificultadReceta dificultad
	TemporadaReceta temporada
}