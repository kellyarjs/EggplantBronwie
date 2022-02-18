//
//  AdicionarItensViewController.swift
//  eggplant-bronwie
//
//  Created by Kelly Silva Araujo on 30/01/22.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    // MARK: IBOutlets

    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    
    @IBAction func adicionarItem(_ sender: Any) {
        
    // navegar para próxima tela: navigationController.push()
    // voltar para tela anterior: navigationController.pop()
        
//        if let nome = nomeTextField.text {
//            nome
//        }
        
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        
        if let numeroDeCalorias = Double(calorias)
        {
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            
//            // Quatro opções de trabalho com opcional
//
//            // 1
//            if delegate == nil {
//                return
//            }
//            delegate!.add(item)
//
//            // 2
//
//            if delegate != nil {
//                delegate!.add(item)
//            }
//
//            // 3
//
//            if let delegate = delegate {
//                delegate.add(item)
//            }
//
//            // 4
//
//            guard let delegate = delegate else {
//                return
//            }
//            delegate.add(item)
//
            delegate?.add(item) // se a variável delegate existir, ele chama o método add, se não, ele não faz nada (tem um if oculto)
            navigationController?.popViewController(animated: true)
        }
    }
}
