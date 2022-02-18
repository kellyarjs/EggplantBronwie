import UIKit
// - Aula 02 (02)
//let nome: String = "lasanha"
//let felicidade: Int = 5
//let calorias: Double = 72.6
//let vegetal: Bool = false
//
////func alimentoConsumido() { //criei o método
////    print("o alimento consumido foi: \(nome)")
////}
////
////alimentoConsumido() //chamei o método
//
////func alimentoConsumido (_ nome: String, _ caloria: Double){
////alimentoConsumido(nome: nome, caloria: calorias)  oculta o parâmetro e torna menos repetitivo na hora de chamar
//
//func alimentoConsumido (nome: String, caloria: Double){
//    print ("O alimento consumido foi: \(nome), com calorias: \(calorias)")
//}
//
//alimentoConsumido(nome: nome, caloria: calorias)

// - Aula 01 (03)

//let caloria1 = 50.5
//let caloria2 = 100
//let caloria3 = 300
//let caloria4 = 500
//
//let totalDeCalorias = [50.5, 100, 300, 500] //declarar lista: abre e fecha [

// Primeira forma de escrever um for

//print(totalDeCalorias)
//
//for i in 0...3 {
//print (i) //imprime o índice
//print(totalDeCalorias[i])   //imprime o valor de dentro da lista (print + nome da lista + pegar a posição que o for tá percorrendo no momento)
//}
//
//// Segunda forma de escrever um for
//
//for i in 0...totalDeCalorias.count-1 {
//print(i)
//    print(totalDeCalorias[i])
//}

// Terceira forma de escrever um for - for in - melhor forma, desde que não precise do índice da lista

//for caloria in totalDeCalorias {
//print(caloria)
//}

// - AULA 02 (03)


//let totalDeCalorias = [50.5, 100]
//
//func todasCalorias(totalDeCalorias: Array<Double>) -> Double {
//    var total: Double = 0 //var total = 0.0 pra mostrar que é double de forma implícita
//
//    for caloria in totalDeCalorias {
//        total += caloria
//    }
//    return total
//}
//let total = todasCalorias(totalDeCalorias: [50.5, 100, 400])
//print(total)
//

// - Aula 01(04)

// Criar primeira refeição


//let nome: String = "Macarrão"
//let felicidade = "5"
//
//// Criar segunda refeição
//
//let nome2 = "Churros"
//let felicidade2 = "4"
//
//// ---------------------------
//
//class Refeicao { //estrutura
//    let nome: String = "Macarrão" // características da estrutura
//    let felicidade = "5"
//}
//
//let refeicao = Refeicao() // Instanciando uma classe let refeicao: Refeicao = Refeicao() explícita
//print(refeicao.nome)
//
//
//class Refeicao2 {
//    var nome = "Churros"
//    var felicidade = "4"
//}
//
//let refeicao2 = Refeicao2 ()
//print(refeicao2.nome)

// Aula 02 (04)

//let nome: String = "Macarrão"
//let felicidade = "5"
//
//// Criar segunda refeição
//
//let nome2 = "Churros"
//let felicidade2 = "4"
//
//// ---------------------------
//
//class Refeicao { //estrutura
//    var nome: String?
//    var felicidade: String?
//}
//
//let refeicao = Refeicao() // Instanciando uma classe let refeicao: Refeicao = Refeicao() explícita
//refeicao.nome = "Macarrão"
//
//print(refeicao.nome!) //forced unwrap

// Aula 03 (04)
//let nome: String = "Macarrão"
//let felicidade = "5"
//
//// Criar segunda refeição
//
//let nome2 = "Churros"
//let felicidade2 = "4"

// ---------------------------

//class Refeicao { //estrutura
//    var nome: String?
//    var felicidade: String?
//}

//let refeicao = Refeicao() // Instanciando uma classe let refeicao: Refeicao = Refeicao() explícita
//refeicao.nome = "Macarrão"
//
//
//if refeicao.nome != nil {
//    print(refeicao.nome!)
//}
//
//// boas práticas para extrair valores opcionais:
//
//if let nome = refeicao.nome{
//    print(nome)
//}
//
//// guard let
//
//func exibeNomeDaRefeicao() {
//    if let nome = refeicao.nome {
//        print(nome)
//    }
//    guard let nome = refeicao.nome else {
//        return
//    }
//    print(nome.uppercased())
//}
//
//
//exibeNomeDaRefeicao()
//
//// Aula o4 (04)
//let numero = Int ("5")
//
//if let n = numero {
//print(n)
//} else {
//    print ("erro ao converter string para int")
//}
//
////guard let numero = numero else {
////    return
////}
////print(numero) só funciona com função
//
//

// Aula 01 (05)

//class Refeicao { //estrutura
//    // MARK: - Atributos
//
//    var nome: String
//    var felicidade: String
//
//
//// MARK: MÉTODO CONSTRUTOR
//    init(nome: String, felicidade: String) {
//        self.nome = nome
//        self.felicidade = felicidade
//    }
//}
//
//let refeicao2 = Refeicao(nome: "Macarrão", felicidade: "5")
//
//let refeicao3 = Refeicao(nome:"Batata", felicidade: "5")
//
//print(refeicao2.nome)
//print(refeicao2.felicidade)
//
//print(refeicao3.nome)
//print(refeicao3.felicidade)



// Aula 02 (05)

class Refeicao { //estrutura
// MARK: - Atributos

   var nome: String
   var felicidade: String
   var itens: Array<Item> = []


// MARK: CONSTRUTOR
    init(nome: String, felicidade: String) {
    self.nome = nome
    self.felicidade = felicidade
    }
    
// MARK - MÉTODOS
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
    }
        return total

}
}
    
class Item {
    var nome: String
    var calorias: Double
    
    init(nome:String, calorias:Double){
        self.nome = nome
        self.calorias = calorias
        }
    }


let arroz = Item(nome: "Arroz", calorias: 51.1)
let feijao = Item(nome: "Feijao", calorias: 90.0)
let contrafile = Item(nome:"Contrafilé", calorias: 287.0)

let refeicao = Refeicao (nome: "Almoço", felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contrafile)

print(refeicao.nome)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}
// print(refeicao.itens.first?.nome) //.first pega o primeiro elemento de dentro da lista / opcional

print(refeicao.totalDeCalorias())
