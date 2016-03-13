package mb.personal.queComemos3

import mb.personal.queComemos3.domain.Usuario
import org.junit.Before

class Entrega1Tests {
	Usuario marcelo
	
	final float tolerancia = 0.1f
	
	@Before
	def void setUp() {

		

		var unPoquitoCeliaco = new Celiaco()
		var unPoquitoHipertenso = new Hipertenso()
		var unPoquitoVegano = new Vegano() 
		
		unVegano = new Vegano()
		unHipertenso = new Hipertenso()
		unDiabetico = new Diabetico()
		
		
		/* Definicion Marcelo */
		/* 
		marcelo = new Usuario()
		marcelo.definirPesoYEstatura(64, 2f)
		marcelo.darNombre("marcelo")
		marcelo.darSexo("hombre")
		marcelo.definirFecha(21, 4, 1995)
		marcelo.darRutina(t_rutina.LEVE)
		marcelo.agregarComidaQueLeGusta("pastas")
		marcelo.agregarCondicion(unPoquitoCeliaco) */

		/* nueva Definicion Marcelo */
		 
		marcelo = new UsuarioBuilder("marcelo").definirPesoYEstatura(64, 2f).darSexo("hombre").definirFecha(21, 4, 1995).
		darRutina(t_rutina.LEVE).agregarComidaQueLeGusta("pastas").agregarCondicion(unPoquitoCeliaco).construir
		

		
		/* Definicion walterWhite
		walter = new Usuario()
		walter.definirPesoYEstatura(64, 2f)
		walter.darNombre("Walter White")
		walter.darSexo("hombre")
		walter.definirFecha(21, 4, 1995)
		walter.darRutina(t_rutina.INTENSA)
		walter.agregarCondicion(unPoquitoHipertenso)
		walter.agregarComidaQueLeGusta("hamburguesasXD") */
		
		walter = new UsuarioBuilder("Walter White").definirPesoYEstatura(64, 2f).darSexo("hombre").definirFecha(21, 4, 1995).
		darRutina(t_rutina.INTENSA).agregarComidaQueLeGusta("hamburguesasXD").agregarCondicion(unPoquitoHipertenso).construir
		

		
		leonardo = new UsuarioBuilder("leonardo aveldanio").definirPesoYEstatura(69, 2f).darSexo("hombre").definirFecha(11, 2, 1993).
		darRutina(t_rutina.INTENSA).agregarComidaQueLeGusta("pizza").agregarComidaQueLeGusta("frutas").agregarCondicion(unPoquitoHipertenso).agregarCondicion(unPoquitoVegano).construir	
		

		carla = new UsuarioBuilder("la Yesi").definirPesoYEstatura(69, 2f).darSexo("mujer").definirFecha(11, 2, 1993).
		darRutina(t_rutina.INTENSA).agregarComidaQueLeGusta("pizza").agregarComidaQueLeGusta("frutas").agregarCondicion(unPoquitoVegano).construir	
		
		/* Definicion pablo - usuario no valido */
		pablo = new Usuario()
		pablo.darNombre("pablo")
		
		ronaldo = new UsuarioBuilder("Ronaldo Luis Nazario de Lima").definirPesoYEstatura(120, 1.8f).darSexo("hombre").definirFecha(22, 9, 1976).
		darRutina(t_rutina.ACTIVA).agregarComidaQueLeGusta("asado").construir	
		

		
	}
}