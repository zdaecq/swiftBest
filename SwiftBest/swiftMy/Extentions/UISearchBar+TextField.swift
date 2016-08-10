//
//  UISearchBarExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 24.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UISearchBar {

    func getTextField() -> UITextField {
        return valueForKey("searchField") as! UITextField
    }

    func setCustomColorToTextField(color: UIColor) {

        //setting color to textField text and placeholder
        let searchBarTextField = getTextField()
        searchBarTextField.textColor = color
        searchBarTextField.attributedPlaceholder = NSAttributedString(string:searchBarTextField.placeholder!, attributes:[NSForegroundColorAttributeName: color])

        //setting color to clear button
        let clearButton = searchBarTextField.valueForKey("clearButton") as! UIButton
        // TODO: make with UIImage extension method
        clearButton.setImage(clearButton.imageView?.image?.imageWithRenderingMode(.AlwaysTemplate), forState: UIControlState.Normal)
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

    func setRoundedTextField() {
        setCornerRadiusToTextField(14)
    }

    func setCustomColorToRoundedTextField(color: UIColor) {
        setRoundedTextField()
        setCustomColorToTextField(color)
    }

    func setCursorColor(color: UIColor) {
        let searchBarTextField = getTextField()
        searchBarTextField.tintColor = color
    }
}
