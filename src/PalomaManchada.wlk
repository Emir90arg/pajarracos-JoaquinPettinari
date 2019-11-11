import Paloma.*
import Ave.*
import Nido.*

class PalomaManchada inherits Paloma {

	const property nidos = #{}

	override method recibirUnDisgusto() {
		super()
		nidos.add(new Nido())
	}

	override method relajarse() {
		if (self.cantidadDeNidos() > 2) {
			nidos.forEach{ nido => nido.grosor(nido.grosor() + 1)}
		} else {
			super()
		}
	}

	method cantidadDeNidos() {
		return nidos.size()
	}

	override method ira() {
		return ira + self.potenciaDeUnNido()
	}

	method potenciaDeUnNido() {
		return nidos.sum{ nido => nido.grosor() * nido.resistenciaDelMaterial() + 20 }
	}

}

