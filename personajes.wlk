// import roles.*
// import localidades.*

// class Personajes {
//   var rol
//   const fuerza
//   const property inteligencia

//   method esInteligencia()
//   method tramiteRol(nuevo){
//     const roles = #{cazador, brujo, guerrero}
//     if(!roles.contains(nuevo)){
//       throw new Exception(message = "el rol no pertenece a los roles disponibles")
//     }
//     rol = nuevo
//   }
//     method potencialOfensivo() = fuerza * 10 + rol.extra()
//     method grosos() = self.esInteligencia() || rol.groso(self)
// }

// class Orcos inherits Personajes { 
//     override method esInteligencia() = false
//     override method potencialOfensivo() = super() + ((fuerza * 10 )/ 100)
// }

// class Humanos inherits Personajes {
//     override method esInteligencia() = inteligencia > 50
// }

