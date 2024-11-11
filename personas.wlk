class Persona {
    var property monedas = 20
    var property edad

    method esDestacado() {
      return edad.between(18, 65) or self.cantidadDeRecursos() > 30
    }

    method ganarMonedas(cantidad) {
      monedas = monedas + cantidad
    }

    method gastarMonedas(cantidad) {
      monedas = monedas - cantidad
    }

    method cumplirAnios() {
      edad += 1
    }

    method cantidadDeRecursos() {
        return monedas
    }
}

class Productor inherits Persona {
  const tecnicas = ["cultivo"]

  override method cantidadDeRecursos() {
    return super() * self.cantidadDeTecnicas()
  }

  override method esDestacado() {
    return super() or self.cantidadDeTecnicas() > 5
  }

  method cantidadDeTecnicas() {
    return tecnicas.size()
  }

  method realizarTecnica(unaTecnica,tiempo) {
    if(tecnicas.contains(unaTecnica)){
        monedas = monedas * (3 * tiempo)
    }else{
        monedas -= 1
    }
  }

  method aprenderTecnica(unaTecnica) {
    return tecnicas.add(unaTecnica)
  }
}