// PERSONAJES/ ORCOS Y HUMANOS //

class Personajes {
    const property fuerza
    const property inteligencia
    var rol

    method cambiarRol(unRol) { rol = unRol}

    method fuerza() = fuerza
    method inteligencia() = inteligencia
    method rol() = rol

    method potencialOfensivo() = fuerza * 10 + rol.extra()
    method esGroso() = self.esInteligente() || self.esGrosoEnSuRol()
    method esInteligente()
    method esGrosoEnSuRol() = rol.esGroso(self)

}

class Orcos inherits Personajes {
    override method potencialOfensivo() = super() * 1.1
    override method esInteligente() = false
}

class Humanos inherits Personajes {
    override method esInteligente() = inteligencia > 50
}

// ROLES DOSPONIBLES //

object guerrero {
    method extra() = 100
    method esGroso(unPersonaje) = unPersonaje.fuerza() > 50 
}



class Cazador {
    const property mascota 
    method extra() = mascota.potencialOfencivo()
    method esGroso(unPersonaje) = mascota.esLongeba()
}




object brujo {
    method extra() = 0  
    method esGroso(unPersonaje) = true
}


class Mascota {
    var edad
    const property fuerza
    const property tieneGarras

    method edad() = edad
    method cumplirAños() { edad = edad + 1}

    method potencialOfensivo() = if(!tieneGarras) fuerza else fuerza * 2

    method esLongeba() = edad > 10
}
