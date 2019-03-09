//
//  PrimeitaTelaController.swift
//  MyAppPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 MyAppPhome. All rights reserved.
//

import UIKit

class PrimeitaTelaController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var altura: UITextField!

    @IBOutlet weak var textoResultado: UILabel!
    
    @IBAction func resultado(_ sender: Any) {
        
        let resultado = calculaIMC(peso: peso, altura: altura)
        textoResultado.text = "\(resultado.imc) \(resultado.msg)"
    }
    
    func calculaIMC(peso:UITextField, altura:UITextField) -> (imc:Float, msg:String) {
        
        let tabelaIMC = (abaixo: "Abaixo do peso", pesoIdeal: "Peso ideal", acimaDoPeso: "Acima do peso")
        
        let valorPeso:Float = Float(peso.text!)!
        let valorAltura:Float = Float(altura.text!)!
        
        let resultCalc = (valorPeso / pow(valorAltura, 2))
        var msg:String!
        
        if (resultCalc < 18){
            msg = tabelaIMC.abaixo
        }else if(resultCalc <= 18 || resultCalc > 24){
            msg = tabelaIMC.pesoIdeal
        }else if(resultCalc > 25){
            msg = tabelaIMC.acimaDoPeso
        }
        
        return (resultCalc, "Teste")
    }
    
    /*
    // MARK: - Navigation
     
    switch
    imageView
    segmentedController
    Slider
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
