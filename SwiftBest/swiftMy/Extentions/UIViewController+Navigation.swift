//
//  UIViewControllerExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// EZSwiftExtensions
    public func push(vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    /// EZSwiftExtensions
    public func pop() {
        navigationController?.popViewControllerAnimated(true)
    }
    
    public func popToRoot() {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    /// EZSwiftExtensions
    public func present(vc: UIViewController) {
        presentViewController(vc, animated: true, completion: nil)
    }
    
    /// EZSwiftExtensions
    public func dismiss(completion completion: (() -> Void)? ) {
        dismissViewControllerAnimated(true, completion: completion)
    }
}