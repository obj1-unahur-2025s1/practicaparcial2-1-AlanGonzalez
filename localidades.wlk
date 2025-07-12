// import personajes.*
// import roles.*


// class Localidades {
//     const property habitantes
//     var cantidadHabitantes
//     var potencialOfensivo = 0
//     method potencialOfensivoHabitantes() { potencialOfensivo = habitantes.sum({h=>h.potencialOfensivo()})}
//     method potencialOfensivo() = potencialOfensivo
//     method desalojar() { cantidadHabitantes = 0}
//     method ocupada(unEjercito){
//         cantidadHabitantes = unEjercito.size()
//     }
//     method cantidadHabitantes() = habitantes.size()
// }

// class Aldeas inherits Localidades {
//     const cantidadMaximaHabitantes
//     override method ocupada(unEjercito){
//     habitantes.clear()
//     if (unEjercito.size() > cantidadMaximaHabitantes) {
//         habitantes.addAll(unEjercito.ejercitoConMayorPotencial(10))
//     } else {
//         habitantes.addAll(unEjercito)
//     }
// }
    
// }

// class Ciudades inherits Localidades{
//     method mejorarDefensa() { potencialOfensivo = potencialOfensivo + 300}
// }

// class Ejercitos {
//     const property ejercito
//     method poderOfensivoEjercito() = ejercito.sum({e=>e.potencialOfensivo()})
//     method lucharContraLocalidad(unaLocalidad){
//         if(self.poderOfensivoEjercito() > unaLocalidad.potencialOfensivo()){
//             unaLocalidad.desalojar()
//             unaLocalidad.ocupada(self.ejercito())
//         }   else{
//             unaLocalidad.mejorarDefensa()
//         }
//     }
//     method tomarLosMasFuertes(unaCantidad){
//         const nuevoEjercito = ejercito.sortBy({ e => e.potencialOfensivo() }).reverse().take(unaCantidad)
//         ejercito.remove(nuevoEjercito)
//         return nuevoEjercito
//     }
// }