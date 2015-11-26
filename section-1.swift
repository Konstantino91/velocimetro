import Foundation

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    init (){
        self = .Apagado
    }
}


class Auto {
    var velocidad = Velocidades()
    
    init (){
        velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        var estado = ""
        var vel = 0
        if velocidad.rawValue == 0 {
            estado = "Apagado"
            vel = 0
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadBaja)
        }else if velocidad.rawValue == 20{
            estado = "Velocidad Baja"
            vel = 20
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadMedia)
        }else if velocidad.rawValue == 50{
            estado = "Velocidad Media"
            vel = 500
            velocidad = Velocidades(velocidadInicial : Velocidades.VelocidadAlta)
        }else {
            estado = "Velocidad Alta"
            vel = 120
            velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
        }
        return (vel, estado)
    }
}


var auto = Auto();

for i in 0..<20{
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(actual), \(velocidadEnCadena)")
}