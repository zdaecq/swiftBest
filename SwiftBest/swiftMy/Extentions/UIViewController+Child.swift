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

        // возможно не надо эту строчку, она вызывается в addChildViewController
        vc.willMoveToParentViewController(self)

        vc.view.frame = container.bounds
        vc.view.layoutIfNeeded() //without animation

        container.removeSubviews()
        container.addSubview(vc.view)

        self.addChildViewController(vc)
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
}
