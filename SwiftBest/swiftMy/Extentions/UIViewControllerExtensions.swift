//
//  UIViewControllerExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

// MARK: startNetwork
extension UIViewController {
    
    func startNetwork() {
        dispatch_async(dispatch_get_main_queue(), {
            UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        })
    }
    
    func finishNetwork() {
        dispatch_async(dispatch_get_main_queue(), {
            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        })
    }
    
}

// MARK: startNetwork executeForLastTextField
extension UIViewController {
    
    func executeForLastTextField(textField: UITextField, onComplition complition: ()->() ) {
        let nextTag: Int = textField.tag + 1
        let nextResponder: UIResponder? = textField.superview?.superview?.viewWithTag(nextTag)
        
        if let nextR = nextResponder {
            nextR.becomeFirstResponder()
        } else {
            complition()
        }
    }
}


// MARK: addTapBackgroundGestureToHideKeyboard
extension UIViewController {
    
    func addTapBackgroundGestureToHideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

// MARK: UnwindSegue
extension UIViewController {
    @IBAction public func unwindToViewController (sender: UIStoryboardSegue){}
}

// MARK: performSegueWithIdentifier
extension UIViewController {
    
    class Box {
        let value: Any
        init(_ value: Any) {
            self.value = value
        }
    }
    
    struct AssociatedKey {
        static var ClosurePrepareForSegueKey = "ClosurePrepareForSegueKey"
        static var token: dispatch_once_t = 0
    }
    
    typealias ConfiguratePerformSegue = (UIStoryboardSegue) -> ()
    func performSegueWithIdentifier(identifier: String, sender: AnyObject?, configurate: ConfiguratePerformSegue?) {
        swizzlingPrepareForSegue()
        configuratePerformSegue = configurate
        performSegueWithIdentifier(identifier, sender: sender)
    }
    
    private func swizzlingPrepareForSegue() {
        dispatch_once(&AssociatedKey.token) {
            let originalSelector = #selector(UIViewController.prepareForSegue(_:sender:))
            let swizzledSelector = #selector(UIViewController.closurePrepareForSegue(_:sender:))
            
            let instanceClass = UIViewController.self
            let originalMethod = class_getInstanceMethod(instanceClass, originalSelector)
            let swizzledMethod = class_getInstanceMethod(instanceClass, swizzledSelector)
            
            let didAddMethod = class_addMethod(instanceClass, originalSelector,
                                               method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
            
            if didAddMethod {
                class_replaceMethod(instanceClass, swizzledSelector,
                                    method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
            } else {
                method_exchangeImplementations(originalMethod, swizzledMethod)
            }
        }
    }
    
    func closurePrepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        configuratePerformSegue?(segue)
        closurePrepareForSegue(segue, sender: sender)
        configuratePerformSegue = nil
    }
    
    var configuratePerformSegue: ConfiguratePerformSegue? {
        get {
            let box = objc_getAssociatedObject(self, &AssociatedKey.ClosurePrepareForSegueKey) as? Box
            return box?.value as? ConfiguratePerformSegue
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKey.ClosurePrepareForSegueKey, Box(newValue), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
}
