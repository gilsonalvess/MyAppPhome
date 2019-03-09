//
//  ViewController.swift
//  MyAppPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 MyAppPhome. All rights reserved.
//

import UIKit

//Classe que controla a lógica e estado de uma tela
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 1 carregada")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("A tela 1 está pronta. Será visivel em breve")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("A tela 1 Já está visivel")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("A tela 1 desaparecerá em breve")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("A tela 1 já desapareceu")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var vLabel: UILabel!
    
    @IBAction func alteraTexto(_ sender: UIButton) {
        vLabel.text = "Olá Mundo!"
    }
    
}

