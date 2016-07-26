//
//  UIViewController+UIActivityIndicator.swift
//  OrderAppManager
//
//  Created by Nikita Mozhaev on 05.05.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit
// TODO: Need SARMaterialDesignSpinner
//import OMCustomControls
//
//extension UIViewController {
//    
//    var activityIndicatorTag: Int { return 999999 }
//    
//    func startActivityIndicator(style: UIActivityIndicatorViewStyle = .White, location: CGPoint? = nil) {
//        dispatch_async(dispatch_get_main_queue(), {
//            UIApplication.sharedApplication().networkActivityIndicatorVisible = true
//            let spinnerView = SARMaterialDesignSpinner(frame: CGRect(x: self.view.frame.width / 2 - 20, y: self.view.frame.size.height / 2, width: 40, height: 40))
//            spinnerView.strokeColor = Colors.orangeThemeColor
//            spinnerView.tag = self.activityIndicatorTag
//            let mainWindow = UIApplication.sharedApplication().delegate!.window!!
//            let blackView = UIView(frame: mainWindow.frame)
//            blackView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
//            mainWindow.addSubview(blackView)
//            blackView.addSubview(spinnerView)
//            blackView.tag = self.activityIndicatorTag
//            spinnerView.startAnimating()
//        })
//    }
//    
//    
//    func stopActivityIndicator() {
//        dispatch_async(dispatch_get_main_queue(), {
//            UIApplication.sharedApplication().networkActivityIndicatorVisible = false
//            let mainWindow = UIApplication.sharedApplication().delegate!.window!!
//            if let activityIndicator = mainWindow.subviews.filter(
//                { $0.tag == self.activityIndicatorTag}).first {
//                activityIndicator.removeFromSuperview()
//                activityIndicator.superview?.removeFromSuperview()
//            }
//        })
//    }
//}
