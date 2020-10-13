//
//  SliderViewController.swift
//  UIElements
//
//  Created by Jose Martins on 13/10/20.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        
        resultLabel.text = String(value)
    }
}
