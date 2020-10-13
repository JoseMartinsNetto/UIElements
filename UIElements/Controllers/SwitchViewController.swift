//
//  SwitchViewController.swift
//  UIElements
//
//  Created by Jose Martins on 13/10/20.
//

import UIKit

class SwitchViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            resultLabel.text = "On"
            return
        }
        
        resultLabel.text = "Off"
    }
    
}
