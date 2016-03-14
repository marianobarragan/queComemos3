package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors

class RecetaCompuesta extends Receta{

	List<Receta> subRecetas = new ArrayList<Receta>
	
}