//
//  BaseKeyboardController.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 29.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

//protocol KeyboardControllerProtocol {
//    weak var bottomKeyboardConstraint: NSLayoutConstraint! { get set }
//}

class BaseKeyboardController: UIViewController {
    
    @IBOutlet weak var bottomKeyboardConstraint: NSLayoutConstraint!
    private final let nc = NSNotificationCenter.defaultCenter()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        nc.addObserver(self, selector: #selector(BaseKeyboardController.keyboardWillShowNotification(_:)), name: UIKeyboardWillShowNotification, object: nil)
        nc.addObserver(self, selector: #selector(BaseKeyboardController.keyboardWillHideNotification(_:)), name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        nc.removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
        nc.removeObserver(self, name: UIKeyboardWillHideNotification, object: nil)
    }
    
    
    // MARK: Notification
    func keyboardWillShowNotification(notification: NSNotification) {
        guard let userInfo = notification.userInfo else {return}
        let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        bottomKeyboardConstraint.constant = keyboardFrame.size.height
        layoutIfNeededWithAnimation()
    }
    
    func keyboardWillHideNotification(notification: NSNotification) {
        bottomKeyboardConstraint.constant = 0
        layoutIfNeededWithAnimation()
    }
    
    func layoutIfNeededWithAnimation() {
        self.view.layoutIfNeeded()
    }
}
