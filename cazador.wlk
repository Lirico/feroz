import feroz.*
import objetos.*

object cazador {
    const peso = 200
    method peso(){
        return peso
    }

    method usar(arma){
        feroz.modificarPeso(-arma.danio())
    }
    method recargar(armaDeFuego){
        armaDeFuego.recargar()
    }
}