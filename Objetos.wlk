// Armas
object ballesta {
  var flechas = 10
  method usar() {
    if (self.estaCargada()){
      flechas = flechas - 1
    }
  }
  method estaCargada() = flechas > 0
  method potencia() = 4  
}
object jabalina {
  var cargada = true
  method estaCargada() = cargada 
  method usar () {
      cargada = false
  }
  method potencia() = 30
}
// Elementos
object castillo {
  var defensa = 150
  var maxDefensa = 200
  method altura() = 20 
  method defensa() = defensa
  method recibirAtaque(potencia) {  
    defensa = defensa - potencia
    if (defensa < 0){
      defensa = 0
    }
  } 
  method valor() = defensa/5
  method recibirTrabajo() {
    defensa += 20
    if(defensa > maxDefensa){
      defensa = maxDefensa
    } 
  }
}
object aurora {
  var viva = true
  method valor() = 15
  method altura() = 1
  method estaViva() = viva
  method recibirAtaque(potencia) {
    if (potencia >= 10){
      viva = false
    }
  }
  method recibirTrabajo() {
    //no hace nada
  }
}
object tipa {
  var altura = 20
  method altura() = altura
  method recibirAtaque(potencia) {
    //no hace nada
  }
  method valor() = self.altura() * 2
  method recibirTrabajo() {
    altura += 1 
  }
}