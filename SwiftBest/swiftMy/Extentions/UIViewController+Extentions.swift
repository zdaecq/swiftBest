//
//  UIViewController+Extentions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIViewController {
    func addBlurToBackgroundWithStyle(blurEffectStyle: UIBlurEffectStyle) {
        view.addBlurToBackgroundWithStyle(blurEffectStyle)
    }
}

//for programm tabBar
extension UIViewController {
    static func initialFromStoryboard(name: String, item: UITabBarItem?, bundle: NSBundle? = nil) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()!
        controller.tabBarItem = item
        return controller
    }
}