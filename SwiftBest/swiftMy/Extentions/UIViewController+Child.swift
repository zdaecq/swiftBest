//
//  UIViewController + Child.swift
//  MenuDrawer
//
//  Created by Yaroslav Bondar on 20.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UIViewController {

    // container must be view of UIViewController
    func addChildVC(vc: UIViewController, toContainer container: UIView) {
        addChildViewController(vc)
        
        vc.view.frame = container.bounds
        vc.view.layoutIfNeeded() //without animation
        container.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
    }

    func addChildVC(vc: UIViewController) {
        addChildVC(vc, toContainer: self.view)
    }

    func addChildWithNavItem(vc: UIViewController, toContainer container: UIView) {
        addChildVC(vc, toContainer: container)
        navigationItem.rightBarButtonItems = vc.navigationItem.rightBarButtonItems
        title = vc.title
    }

    func addChildVCWithNavItem(vc: UIViewController) {
        addChildWithNavItem(vc, toContainer: self.view)
    }
    
    
    //remove
    func removeFromContainer() {
        willMoveToParentViewController(nil)
        view.removeFromSuperview()
        removeFromParentViewController()
    }
}
