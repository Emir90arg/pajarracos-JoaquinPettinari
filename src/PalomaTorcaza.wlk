import Paloma.*
import Ave.*

class PalomaTorcaza inherits Paloma {

	var property huevos = 3

	override method fuerza() {
		return super() + huevos * 100
	}

	override method recibirUnDisgusto() {
		super()
		huevos++
	}

}

