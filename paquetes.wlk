import mensajeros.*

object paqueteGalactico {
  
}

object paquetito {
    var destino = ninguno

    method agregarDestino(unDestino) {
      destino = unDestino
    }
    method precio() = 0 
    method pagar(cantidad) {}
    method puedeSerLlevado(unMensajero) = destino.puedePasar(unMensajero)
}

object paquetonViajero {
    var estaPago = false
    const destinos = []
    const pagos = []

    method agregarDestino(destino) {
        destinos.add(destino)
    } 
    method precio() = 100 * destinos.size()
    method pagar(cantidad) {
        pagos.add(cantidad)
    }
    method sePago() {
        if (pagos.sum() == self.precio()) estaPago = true
    }
    method puedeSerLlevado(unMensajero) = estaPago and destinos.all({d => d.puedePasar(unMensajero)})
}

object paqueteOriginal {
    var estaPago = false
    var destino = ninguno


    method agregarDestino(unDestino) {
      destino = unDestino
    }
    method precio() = 50
    method pagar(cantidad) {
        estaPago = true
    }
    method puedeSerLlevado(unMensajero) = estaPago and destino.puedePasar(unMensajero) 
}


object ninguno {
  
}

