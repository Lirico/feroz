import caperucita.*
import objetos.*
import abuelita.*
import cazador.*
object feroz {
  
  var peso = 10;

  method estaSaludable(){
    if (peso < 20) {
        return "Esta famelico"
    } else if(peso > 150) {
        return "Esta gordito"
    } else {
        return "Esta saludable"
    }
  }

  method modificarPeso(unidades){
    peso += unidades

    return peso
  }

  method sufrirCrisis(){
    peso = 10
  }

  method comer(comida){
    peso = self.modificarPeso(comida * 0.1) 
  }

  method correr(){
    peso -= 1
  }
  method peso(){
    return peso
  }
}