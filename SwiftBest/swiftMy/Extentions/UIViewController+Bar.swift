//
//  UIViewController+Bar.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /// EZSwiftExtensions
    public var navigationBar: UINavigationBar? {
        get {
            return navigationController?.navigationBar
        }
    }
    
    func setNavigationBarTranslucent() {
        if let nc = navigationController {
            nc.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
            nc.navigationBar.shadowImage = UIImage()
            nc.navigationBar.translucent = true
            nc.view.backgroundColor = UIColor.clearColor()
        }
    }
    
    func clearBackBarButtonTitle() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
    func hideTabBar() {
        if let tabBarController = tabBarController {
            tabBarController.tabBar.hidden = true
        }
    }
}
