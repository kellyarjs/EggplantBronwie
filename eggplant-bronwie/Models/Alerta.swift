//
//  Alerta.swift
//  eggplant-bronwie
//
//  Created by Kelly Silva Araujo on 30/01/22.
//

import UIKit // Antes era foundation, tive que importar esse framework poque estou trabalhando com interface do usuário

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String ) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(ok)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}
