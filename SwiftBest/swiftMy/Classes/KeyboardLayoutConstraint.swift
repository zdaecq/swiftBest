//
//  KeyboardLayoutConstraint.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 29.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

public class KeyboardLayoutConstraint: NSLayoutConstraint {
    
    // MARK: - Life cycle
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(KeyboardLayoutConstraint.keyboardWillShowNotification(_:)), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(KeyboardLayoutConstraint.keyboardWillHideNotification(_:)), name: UIKeyboardWillHideNotification, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    // MARK: - Notification
    func keyboardWillShowNotification(notification: NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        constant = keyboardFrame.size.height
        layoutIfNeededWithAnimation()
    }
    
    func keyboardWillHideNotification(notification: NSNotification) {
        constant = 0
        layoutIfNeededWithAnimation()
    }
    
    // MARK: - Helper
    func layoutIfNeededWithAnimation() {
        if let view = firstItem as? UIScrollView {
            view.layoutIfNeeded()
        } else if let view = secondItem as? UIScrollView {
            view.layoutIfNeeded()
        }
    }
}