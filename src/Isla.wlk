import Ave.*
import Aguilucho.*
import AguiluchoColorado.*
import Albatros.*
import Paloma.*
import PalomaTorcaza.*

class Isla {

	const property aves = []
	var property maiz = 10
	var property alpiste = 10

	// Etapa 1
	method agregarAve(ave) {
		aves.add(ave)
	}

	method avesDebiles() {
		return aves.filter{ ave => ave.fuerza() < 1000 }
	}

	method fuerzaTotal() {
		return aves.sum{ ave => ave.fuerza() }
	}

	method esRobusta() {
		return aves.all{ ave => ave.fuerza() > 300 }
	}

	method terremoto() {
		aves.forEach{ ave => ave.recibirUnDisgusto()}
	}

	method tormenta() {
		self.avesDebiles().forEach{ ave => ave.recibirUnDisgusto()}
	}

	// Etapa 2
	method aveCapitana() {
		return self.avesConPotencialASerCapitanas().max{ ave => ave.fuerza() }
	}

	method avesConPotencialASerCapitanas() {
		return aves.filter{ ave => ave.fuerza().between(1000, 3000) }
	}

	method estaEnPaz() {
		return aves.all{ ave => ave.estaConforme(self) }
	}

	method sesionRelax() {
		aves.forEach{ ave => ave.relajarse()}
	}

	method alimentacion() {
		aves.forEach{ ave => ave.tomaAlimento(self)}
	}

	method cantidadDeAvesMasFuertesQue(queAve) {
		return aves.count{ ave => ave.fuerza() > queAve.fuerza() }
	}

	method hayUnaSolaAveDebil() {
		return self.avesDebiles().size() <= 1
	}

}

