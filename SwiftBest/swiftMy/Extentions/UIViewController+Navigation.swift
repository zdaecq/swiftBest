//
//  UIViewControllerExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

// MARK: - VC Flow
extension UIViewController {
    
    /// EZSwiftExtensions
    public func pushVC(vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    /// EZSwiftExtensions
    public func popVC() {
        navigationController?.popViewControllerAnimated(true)
    }
    
    /// EZSwiftExtensions
    public func presentVC(vc: UIViewController) {
        presentViewController(vc, animated: true, completion: nil)
    }
    
    /// EZSwiftExtensions
    public func dismissVC(completion completion: (() -> Void)? ) {
        dismissViewControllerAnimated(true, completion: completion)
    }
    
    func dismiss() {
        if let navController = navigationController {
            navController.popViewControllerAnimated(true)
        } else {
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
}

