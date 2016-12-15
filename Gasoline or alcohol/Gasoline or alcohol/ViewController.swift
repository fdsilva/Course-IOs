//
//  ViewController.swift
//  Gasoline or alcohol
//
//  Created by MacBook Pro on 15/12/16.
//  Copyright © 2016 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPrecoAlcool: UITextField!
    
    @IBOutlet weak var tfPrecoGasolina: UITextField!
    
    @IBOutlet weak var tfResultado: UITextField!
    
    @IBAction func calcularPreco(_ sender: Any) {
        var precoAlcool: Double = 0;
        var precoGasolina: Double = 0;
        var precoResultado: Double = 0;
        
        if let resultadoAlcool = tfPrecoAlcool.text{
            
            if resultadoAlcool != ""{
                
                if let resultadoNumero = Double(resultadoAlcool){
                    precoAlcool = resultadoNumero
                }
            }
        }
        
        if let resultadoGasolina = tfPrecoGasolina.text{
            
            if resultadoGasolina != ""{
                
                if let resultadoNumero = Double(resultadoGasolina){
                    precoGasolina = resultadoNumero
                }
            }
        }
        
        //preco do alcool/preco gasol >= 0.7
        
        precoResultado = precoAlcool / precoGasolina
        
        if precoResultado >= 0.7{
            tfResultado.text = "Melhor usar gasolina"
        }else{
            tfResultado.text = "Melhor usar alcool"
        }
        
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

