//
//  SegmentedControlViewController.swift
//  UIElements
//
//  Created by Jose Martins on 13/10/20.
//

import UIKit

class SegmentedControlViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        let current = segmentedControl.selectedSegmentIndex
        
        switch current {
        case 0:
            self.view.backgroundColor = UIColor.systemGreen
        case 1:
            self.view.backgroundColor = UIColor.systemYellow
        default:
            break
        }
    }
}
