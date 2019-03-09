//
//  SegundaTelaViewController.swift
//  MyAppPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 MyAppPhome. All rights reserved.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("A tela 2 está pronta. Será visivel em breve")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("A tela 2 Já está visivel")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("A tela 2 desaparecerá em breve")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("A tela 2 já desapareceu" + "\n")
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var campoDeTexto: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        campoDeTexto.resignFirstResponder()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
