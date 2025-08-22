import Objetos.*

// Personajes
object luisa {
  var personajeActivo = null
  method asignarPJ(personaje) {
    personajeActivo = personaje
  }
  method aparece(elemento) {
    if (personajeActivo != null){
      personajeActivo.encontrar(elemento)
    }
  }
}
object floki {
  var arma = jabalina
  method encontrar(elemento) {
    if (arma.estaCargada()){
      elemento.recibirAtaque(arma.potencia())
      arma.usar()
    } 
  }
  method cambiarArma(otraArma) {
    arma = otraArma
  }
}
object mario {
  var valorRecolectado = 0 
  var ultimoElemento = castillo // elemento arbitrario
  method encontrar(elemento) {
    ultimoElemento = elemento
    valorRecolectado += elemento.valor()
    elemento.recibirTrabajo()
  }
  method esFeliz() = (valorRecolectado >= 50) or (ultimoElemento.altura() >= 10)
}