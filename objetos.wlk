import feroz.*

object canasta {
    var manzanas = 6

    method cantidadManzanas(){
        return manzanas
    }
    method actualizarManzanas(cantidad){
        manzanas += cantidad
    }
}
object manzana {
    const peso = 0.2

    method peso(){
        return peso
    }
}
object escopeta {
    var balas = 2

    // Este arma va destrozando extremidades del lobo.
    method danio(){
        if(balas == 0){
            return 0
        }
        balas -= 2
        return 5;
    }

    method recargar(){
        if(balas == 0){
            balas += 2
        }
    }
}
object sableDeLuz {
    // Este arma hace un asesinato instantaneo. 
    method danio(){
        return feroz.peso()   
    }
}