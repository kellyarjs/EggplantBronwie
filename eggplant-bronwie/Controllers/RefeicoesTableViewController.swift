//
//  RefeicoesTableViewController.swift
//  eggplant-bronwie
//
//  Created by Kelly Silva Araujo on 26/01/22.
//

// import Foundation
import UIKit

class RefeicoesTableViewController: UITableViewController, AdicionaRefeicaoDelegate {
    
    var refeicoes: [Refeicao] = []
    
    override func viewDidLoad() {
        
        refeicoes = RefeicaoDao().recupera()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        let longPress = UILongPressGestureRecognizer (target: self, action: #selector(mostrarDetalhes(_:)))
        celula.addGestureRecognizer(longPress)
        
        return celula
        
    }
    
    func add(_ refeicao: Refeicao) {
        refeicoes.append(refeicao)
        tableView.reloadData()
        RefeicaoDao().save(refeicoes)
        }
    
    @objc func mostrarDetalhes(_ gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            let celula = gesture.view as! UITableViewCell
            
            guard let indexPath = tableView.indexPath(for: celula) else { return } // ele vai tentar extrair o valor do indexPath e se ele não conseguir, eu dou um return
            
            let refeicao = refeicoes[indexPath.row]

            RemoveRefeicaoViewController(controller: self).exibe(refeicao, handler:
            { alert in
                self.refeicoes.remove(at: indexPath.row)
                self.tableView.reloadData() //atualizar a interface do usuário
            })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {//as" converte
        viewController.delegate = self // afirma que minha variável é aquela instancia
        }
    }
}
}
