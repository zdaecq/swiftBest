//
//  UIViewController + Text.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// MARK: startNetwork executeForLastTextField
extension UIViewController {
    
    func executeForLastTextField(textField: UITextField, onComplition complition: ()->() ) {
        let nextTag: Int = textField.tag + 1
        let nextResponder: UIResponder? = textField.superview?.superview?.viewWithTag(nextTag)
        
        if let nextResponder = nextResponder {
            nextResponder.becomeFirstResponder()
        } else {
            complition()
        }
    }
}


// MARK: addTapBackgroundGestureToHideKeyboard
extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
