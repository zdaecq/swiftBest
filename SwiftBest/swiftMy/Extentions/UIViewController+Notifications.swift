//
//  UIViewController + Notifications.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // MARK: - Notifications
    public func addNotificationObserver(name: String, selector: Selector) {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: selector, name: name, object: nil)
    }
    
    public func removeNotificationObserver(name: String) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: name, object: nil)
    }
    
    public func removeNotificationObserver() {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    
    // MARK: - Keyboard Notifications (iOS only)
    #if os(iOS)
    
    public func addKeyboardWillShowNotification() {
        self.addNotificationObserver(UIKeyboardWillShowNotification, selector: #selector(UIViewController.keyboardWillShowNotification(_:)))
    }
    
    public func addKeyboardDidShowNotification() {
        self.addNotificationObserver(UIKeyboardDidShowNotification, selector: #selector(UIViewController.keyboardDidShowNotification(_:)))
    }
    
    public func addKeyboardWillHideNotification() {
        self.addNotificationObserver(UIKeyboardWillHideNotification, selector: #selector(UIViewController.keyboardWillHideNotification(_:)))
    }
    
    public func addKeyboardDidHideNotification() {
        self.addNotificationObserver(UIKeyboardDidHideNotification, selector: #selector(UIViewController.keyboardDidHideNotification(_:)))
    }
    
    public func removeKeyboardWillShowNotification() {
        self.removeNotificationObserver(UIKeyboardWillShowNotification)
    }
    
    public func removeKeyboardDidShowNotification() {
        self.removeNotificationObserver(UIKeyboardDidShowNotification)
    }
    
    public func removeKeyboardWillHideNotification() {
        self.removeNotificationObserver(UIKeyboardWillHideNotification)
    }
    
    public func removeKeyboardDidHideNotification() {
        self.removeNotificationObserver(UIKeyboardDidHideNotification)
    }
    
    public func keyboardDidShowNotification(notification: NSNotification) {
        if let nInfo = notification.userInfo, value = nInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            
            let frame = value.CGRectValue()
            keyboardDidShowWithFrame(frame)
        }
    }
    
    public func keyboardWillShowNotification(notification: NSNotification) {
        if let nInfo = notification.userInfo, value = nInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            
            let frame = value.CGRectValue()
            keyboardWillShowWithFrame(frame)
        }
    }
    
    public func keyboardWillHideNotification(notification: NSNotification) {
        if let nInfo = notification.userInfo, value = nInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            
            let frame = value.CGRectValue()
            keyboardWillHideWithFrame(frame)
        }
    }
    
    public func keyboardDidHideNotification(notification: NSNotification) {
        if let nInfo = notification.userInfo, value = nInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue {
            
            let frame = value.CGRectValue()
            keyboardDidHideWithFrame(frame)
        }
    }
    
    public func keyboardWillShowWithFrame(frame: CGRect) {
        
    }
    
    public func keyboardDidShowWithFrame(frame: CGRect) {
        
    }
    
    public func keyboardWillHideWithFrame(frame: CGRect) {
        
    }
    
    public func keyboardDidHideWithFrame(frame: CGRect) {
        
    }
    
#endif
    
}