import feroz.*
import caperucita.*
import objetos.*
import abuelita.*
import cazador.*

object narrador {
    // Ejecutar este metodo para activar la historia
     
    // Elegir uno de los siguientes finales posibles como argumento:
    const ferozGana = 1;
    const ferozEscapa = 2;
    const finalSecreto = 3;

  method relatarCuento(elegirFinal){
    feroz.correr() // Al bosque
    // Encuentra a caperucita y conversan
    feroz.correr() // A la casa de la abuelita
    feroz.comer(abuelita.peso()) // Y se disfraza   
    //Caperucita cruza el bosque y...
    canasta.actualizarManzanas(-1)
    // Caperucita llega a la casa de la abuela y entonces...
    feroz.comer(caperucita.peso() + (canasta.cantidadManzanas() * manzana.peso()))
    // Entonces llega el cazador y le mete un cuetazo con la escopeta, aunque
    // si gustas, podria usar el sableDeLuz y partirlo al medio de un saque.
    if(elegirFinal == ferozGana){
        feroz.comer(cazador.peso())
        console.println("Feroz ha vencido 🏆")
    } else if(elegirFinal == ferozEscapa){
        cazador.usar(objetos.escopeta)
        feroz.correr()
        console.println("Feroz ha escapado 🏃, aunque ha perdido un brazo.")
    } else if(elegirFinal == finalSecreto) {
        cazador.usar(objetos.sableDeLuz)
        console.println("Feroz ha muerto 💀")
    }
    
    return feroz.estaSaludable()
  }
}