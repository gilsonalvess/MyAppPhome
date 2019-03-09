//
//  MoboTorchController.swift
//  MyAppPhome
//
//  Created by Aluno on 09/03/2019.
//  Copyright © 2019 MyAppPhome. All rights reserved.
//

import UIKit

class MoboTorchController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func handleSlider(_ sender: UISlider) {
        self.view.alpha = CGFloat(sender.value)
    }
    
    @IBAction func handleSwitch(_ sender: UISwitch) {
        segmentedControl.isEnabled = sender.isOn
        sliderControl.isEnabled = sender.isOn
    }
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var sliderControl: UISlider!
    
    
    @IBAction func handleSegmentedControl(_ sender: UISegmentedControl) {
        
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.blue
        case 2:
            self.view.backgroundColor = UIColor.green
        default:
           self.view.backgroundColor = UIColor.blue
        }
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
