package mb.personal.queComemos3.creacionales

import mb.personal.queComemos3.domain.Usuario
import mb.personal.queComemos3.domain.CondicionPreexistente
import mb.personal.queComemos3.domain.Rutina

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
	def UsuarioBuilder agregarCondicion(CondicionPreexistente unaCondicion) {
		usuarioBuild.condicionesPreexistentes.add(unaCondicion)
		return this
	}
	def UsuarioBuilder darRutina(Rutina nuevaRutina) {
		usuarioBuild.setRutina(nuevaRutina)
		return this
	}
}