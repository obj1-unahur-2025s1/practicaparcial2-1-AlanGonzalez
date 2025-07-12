import personajess.*

class Localidad {
    var property ejercito 


    method potencialDefensivo() = ejercito.potenciaTotal()

    method serOcupada(unEjercito)

}

class Aldea inherits Localidad {
    const property cantMaximaPersonajes

    override method serOcupada(unEjercito) {
        if(unEjercito.size() > cantMaximaPersonajes) {
            ejercito = unEjercito.nuevoEjercitoFuerte(10)
        }
    }

    

}

class Ciudad inherits Localidad {
    override method potencialDefensivo() = super() + 300
    override method serOcupada(unEjercito){
        ejercito = unEjercito
    }


}

class Ejercito {
    const property ejercito = []

    method invadir(unCiudad){
        if(self.puedeTomarLocalidad(unCiudad)){
            unCiudad.serOcupada(self)
        }
    }

    method puedeTomarLocalidad(unaLocalidad) = self.potenciaTotal() > unaLocalidad.potencialDefensivo()

    method potenciaTotal() = ejercito.sum({e=>e.potencialOfensivo()})

    method nuevoEjercitoFuerte(unaCantidad){
       const nuevoEjercito = ejercito.sortBy({ p1, p2 => p1.potencialOfensivo() > p2.potencialOfensivo()}).take(unaCantidad)
       ejercito.removeAll(nuevoEjercito)
       return new Ejercito ( ejercito = nuevoEjercito)
    }
}