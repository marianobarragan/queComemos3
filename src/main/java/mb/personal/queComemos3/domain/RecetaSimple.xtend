package mb.personal.queComemos3.domain

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors

class RecetaSimple extends Receta {
	
	def boolean esValida(){
		ingredientes.size > 0 &&
		calorias > 10 &&
		calorias < 5000	
	}
	
	def boolean esInadecuadaParaUsuario(Usuario u)
	{
		true
	}
}