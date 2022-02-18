//
//  Item.swift
//  eggplant-bronwie
//
//  Created by Kelly Silva Araujo on 26/01/22.
//

import UIKit

class Item: NSObject, NSCoding {
    
    // MARK: ATRIBUTOS
    let nome: String
    let calorias: Double
    
    // MARK: INIT
    init(nome:String, calorias:Double){
        self.nome = nome
        self.calorias = calorias
        }
    
    // MARK: NSCoding
    
    func encode(with aCoder: NSCoder) { //serialização
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder aDecoder: NSCoder) { //desserialização
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
    }
}
