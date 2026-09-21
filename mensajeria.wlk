import mensajeros.*
import paquetes.*
object mensajeria {
    const mensajeros = []
    method contratarMensajero(unMensajero) {
      mensajeros.add(unMensajero)
    }
    method despedirMensajero(unMensajero) {
      mensajeros.remove(unMensajero)
    }
    method despedirATodos() {
      mensajeros.removeAll(mensajeros)
    }
    method esMensajeriaGrande() = mensajeros.size() > 2
    method puedeSerEntregadoPorElPrimerEmpleado(unPaquete) = unPaquete.puedeSerLlevado(mensajeros.first())
    method pesoDelUltimoMensajero() = mensajeros.last().peso()
    method elMensajeroEstaContratado(unMensajero) = mensajeros.contains(unMensajero)
}