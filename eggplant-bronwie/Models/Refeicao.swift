//
//  Refeicao.swift
//  eggplant-bronwie
//
//  Created by Kelly Silva Araujo on 26/01/22.
//

import UIKit

class Refeicao: NSObject, NSCoding {
 
    // MARK: - Atributos

       let nome: String
       let felicidade: Int
       var itens: Array<Item> = []


    // MARK: Init - CONSTRUTOR
        init(nome: String, felicidade: Int, itens: [Item] = []) { // valor default no item, posso ou não passar
        self.nome = nome
        self.felicidade = felicidade
            self.itens = itens
        }
    
    // MARK: NSCoding
    
    func encode(with aCoder: NSCoder) { //serialização
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(felicidade, forKey: "felicidade")
        aCoder.encode(itens, forKey: "itens")
        
    }
    
    required init?(coder aDecoder: NSCoder) { //desserialização
        nome = aDecoder.decodeObject(forKey: "nome") as! String //as é um casting
        felicidade = aDecoder.decodeInteger(forKey: "felicidade")
        itens = aDecoder.decodeObject(forKey: "itens") as! Array<Item>
    }
    
    
    // MARK: - MÉTODOS
        func totalDeCalorias() -> Double {
            var total = 0.0
            
            for item in itens {
                total += item.calorias
        }
            return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        return mensagem
    }
}
