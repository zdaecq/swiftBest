//
//  UISearchBarExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 24.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UISearchBar {
    
    func setCustomColorToTextField(color: UIColor) {
        
        //setting color to textField text and placeholder
        let searchBarTextField = self.valueForKey("searchField") as! UITextField
        searchBarTextField.textColor = color
        searchBarTextField.attributedPlaceholder = NSAttributedString(string:searchBarTextField.placeholder!, attributes:[NSForegroundColorAttributeName: color])
        
        //setting color to clear button
        let clearButton = searchBarTextField.valueForKey("clearButton") as! UIButton
        clearButton.setImage(clearButton.imageView?.image?.imageWithRenderingMode(.AlwaysTemplate), forState: .Normal)
        clearButton.tintColor = color
        
        //setting color to glass icon
        let glassIconView = searchBarTextField.leftView as! UIImageView
        glassIconView.image = glassIconView.image?.imageWithRenderingMode(.AlwaysTemplate)
        glassIconView.tintColor = color
    }
    
    func setCornerRadiusToTextField(cornerRadius: Float) {
        let searchBarTextField = self.valueForKey("searchField") as! UITextField
        searchBarTextField.layer.cornerRadius = CGFloat(cornerRadius)
        searchBarTextField.clipsToBounds = true
    }
    
    func setCustomColorToRoundedTextField(color: UIColor) {
        
        self.setCornerRadiusToTextField(14)
        self.setCustomColorToTextField(color)
    }
    
}