import Ave.*

class Aguilucho inherits Ave {

	var property velocidad = 20

	override method fuerza() {
		return if (velocidad < 60) {
			180
		} else {
			velocidad * 3
		}
	}

	override method recibirUnDisgusto() {
		velocidad *= 2
	}

	override method relajarse() {
		velocidad -= 10
	}

	override method estaConforme(isla) {
		return isla.alpiste() >= 8
	}

	override method tomaAlimento(isla) {
		isla.alpiste(isla.alpiste() - 3)
		velocidad += 15
	}

}

