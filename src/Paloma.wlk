import Ave.*

class Paloma inherits Ave {

	var property ira = 200

	override method fuerza() {
		return ira * 2
	}

	override method recibirUnDisgusto() {
		ira += 300
	}

	override method relajarse() {
		ira -= 50
	}

	override method estaConforme(isla) {
		return isla.hayUnaSolaAveDebil()
	}

	override method tomaAlimento(isla) {
	}

	method equilibrarse() {
		if (self.fuerza() <= 700) {
			self.recibirUnDisgusto()
		} else {
			self.relajarse()
		}
	}

}

