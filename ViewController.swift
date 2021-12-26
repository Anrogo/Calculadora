//
//  ViewController.swift
//  Calculator
//
//  Created by user190722 on 12/24/21.
//

import UIKit

enum Operacion {
    case suma
    case resta
    case multiplicacion
    case division
}

class ViewController: UIViewController {

    @IBOutlet weak var numeroUnoTextField: UITextField!
    
    @IBOutlet weak var numeroDosTextField: UITextField!
    
    @IBOutlet weak var resultadoLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func accionSuma(_ sender: UIButton) {
        operacion(op: .suma)
    }
    
    
    @IBAction func accionResta(_ sender: UIButton) {
        operacion(op: .resta)
    }
    
    
    @IBAction func accionMult(_ sender: UIButton) {
        operacion(op: .multiplicacion)
    }
    
    @IBAction func accionDiv(_ sender: UIButton) {
        operacion(op: .division)
    }
    
    func operacion(op: Operacion){
        
        let num1 = Int(numeroUnoTextField.text!)!
        let num2 = Int(numeroDosTextField.text!)!
        var resultado = 0
        switch op{
        case .suma:
            resultado = num1 + num2
        case .resta:
            resultado = num1 - num2
        case .multiplicacion:
            resultado = num1 * num2
        case .division:
            resultado = num1 / num2
        default:
            print("Valor incorrecto")
        }
        resultadoLabel.text = "\(resultado)"
    }
}

