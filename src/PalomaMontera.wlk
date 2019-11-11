import Paloma.*
import Ave.*

class PalomaMontera inherits Paloma {

	var property tope = 2000

	override method fuerza() {
		return super().min(tope)
	}

}

