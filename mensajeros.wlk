object roberto {
  var vehiculoActual = bici
  
  method cambiarVehiculo(unVehiculo) {
    vehiculoActual = unVehiculo
  }
  method peso() = 90 + vehiculoActual.peso()
  method puedeLlamar() = false
}

object bici {
  method peso() = 5
}
object camion {
  var acoplados = 0
  method agregarAcoplados() {
    acoplados += 1
  }
  method peso() {
    return acoplados * 500
  }
}


object chuckNorris {
  method peso() = 80

  method puedeLlamar() = true
}

object neo {
  var tieneCredito = false

  method peso() = 0
  method cargarCredito() {
    tieneCredito = true
  } 
  method puedeLlamar() = tieneCredito

}


object puenteBrooklyn {
  method puedePasar(unMensajero) = unMensajero.peso() <= 1000 
}

object matrix {
  method puedePasar(unMensajero) = unMensajero.puedeLlamar() 
}
