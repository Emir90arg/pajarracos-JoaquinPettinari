import Ave.*

class Albatro inherits Ave {

	var property peso = 4000
	var property masaMuscular = 600

	override method fuerza() {
		return if (peso < 6000) {
			masaMuscular
		} else {
			masaMuscular / 2
		}
	}

	override method recibirUnDisgusto() {
		peso += 800
	}

	method irAlGimnasio() {
		peso += 500
		masaMuscular += 500
	}

	override method relajarse() {
		peso -= 300
	}

	override method estaConforme(isla) {
		return isla.cantidadDeAvesMasFuertesQue(self) <= 2
	}

	override method tomaAlimento(isla) {
		isla.maiz(isla.maiz() - 4)
		masaMuscular += 700
		peso += 700
	}

}

