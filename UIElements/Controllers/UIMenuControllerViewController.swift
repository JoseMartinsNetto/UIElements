//
//  UIMenuControllerViewController.swift
//  UIElements
//
//  Created by Jose Martins on 18/01/21.
//

import UIKit

class ResponsiveView: UIView {
    override var canBecomeFirstResponder: Bool {
        return true
    }
}

class UIMenuControllerViewController: UIViewController {
    @IBOutlet var vwLongPressView: ResponsiveView!
    
    //-----------------------------------------------------------------------
    //    MARK: - UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configGestures()
    }
    
    func configGestures() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress))
        vwLongPressView.addGestureRecognizer(longPress)
    }
    
    @objc func saveTapped() {
        print("saveTapped")
    }
    
    @objc func deleteTapped() {
        print("deleteTapped")
    }
    
    @objc func handleLongPress(_ sender: UILongPressGestureRecognizer) {
        print("handleLongPress")
        guard sender.state == .began,
              let senderView = sender.view,
              let superView = sender.view?.superview
        else { return }
        
        let menuController = UIMenuController.shared
        
        // Make responsiveView the window's first responder
        senderView.becomeFirstResponder()
        
        // Set up the shared UIMenuController
        let saveMenuItem = UIMenuItem(title: "Save", action: #selector(saveTapped))
        let deleteMenuItem = UIMenuItem(title: "Delete", action: #selector(deleteTapped))
        
        menuController.menuItems = [saveMenuItem,deleteMenuItem]
        menuController.arrowDirection = .right
        menuController.showMenu(from: superView, rect: senderView.frame)
    }
}

class CustomUIMenuController: UIMenuController {
    
}
