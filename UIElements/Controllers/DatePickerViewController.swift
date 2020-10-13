//
//  DatePickerViewController.swift
//  UIElements
//
//  Created by Jose Martins on 13/10/20.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createPicker()
    }
    
    
    func createPicker() {
        let toolBar = UIToolbar()
        let doneButton = UIBarButtonItem(title: "Confirmar", style: .done, target: nil, action: #selector(onClickDone))

        toolBar.sizeToFit()
        toolBar.setItems([doneButton], animated: true)
        
        datePicker.locale = Locale(identifier: "pt-br")
        datePicker.datePickerMode = .date
        
        textField.inputAccessoryView = toolBar
        textField.inputView = datePicker
    }

    @objc func onClickDone() {

        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.locale = Locale(identifier: "pt-br")

        let dateString = formatter.string(from: datePicker.date)

        textField.text = "\(dateString)"
        self.view.endEditing(true)
    }
}
