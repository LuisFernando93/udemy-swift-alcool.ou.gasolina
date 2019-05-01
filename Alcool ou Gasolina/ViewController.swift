//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Luis Fernando Pasquinelli Amaral de Abreu on 28/10/17.
//  Copyright © 2017 Luis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcool: UITextField!
    @IBOutlet weak var precoGasolina: UITextField!
    @IBOutlet weak var textoResultado: UILabel!
    
    @IBAction func botaoCalcular(_ sender: Any) {
        if let precoAlcool = precoAlcool.text{
            if let precoGasolina = precoGasolina.text{
               let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if validaCampos {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                } else {
                    textoResultado.text = "Digite agora!"
                }
            }
        }
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        if let nA = Double(precoAlcool){
            if let nG = Double(precoGasolina){
                let resultadoPreco = nA/nG
                if resultadoPreco >= 0.7{
                    self.textoResultado.text = "Ponha Gasolina!"
                } else {self.textoResultado.text = "Ponha Álcool!"}
            }
        }
    }
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        var camposValidados = true
        
        if precoAlcool.isEmpty || precoGasolina.isEmpty {
            camposValidados = false
        }
        return camposValidados
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

