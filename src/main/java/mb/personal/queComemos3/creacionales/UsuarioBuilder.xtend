package mb.personal.queComemos3.creacionales

import mb.personal.queComemos3.domain.Usuario

class UsuarioBuilder {
	
	private Usuario usuarioBuild
	
	new(String nombre){
		usuarioBuild = new Usuario
		usuarioBuild.setNombre(nombre)
	}
	
	def Usuario build(){
		if(usuarioBuild.esValido){
			return usuarioBuild
		}
	}
	//**********************************//
	def UsuarioBuilder setPesoYEstatura(float peso, float estatura){
		usuarioBuild.setPeso(peso)
		usuarioBuild.setEstatura(estatura)
		return this
	}
	def UsuarioBuilder setSexo(String sexo) {
		usuarioBuild.setSexo(sexo)
		return this
	}
}