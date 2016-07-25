//
//  UIViewController+TabBar.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 26.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// TODO: Need to test
// TODO: test if there is no tab bar
//Usage: setTabBarVisible(!tabBarIsVisible(), animated: true)
extension UIViewController {

    // MARK: - 1
    func setTabBarVisible(visible: Bool, animated: Bool) {

        //* This cannot be called before viewDidLayoutSubviews(), because the frame is not set before this time

        // bail if the current state matches the desired state
        if (tabBarIsVisible() == visible) { return }

        // get a frame calculation ready
        let frame = self.tabBarController?.tabBar.frame
        let height = frame?.size.height
        let offsetY = (visible ? -height! : height)

        // zero duration means no animation
        let duration: NSTimeInterval = (animated ? 0.3 : 0.0)

        //  animate the tabBar
        if frame != nil {
            UIView.animateWithDuration(duration) {
                self.tabBarController?.tabBar.frame = CGRectOffset(frame!, 0, offsetY!)
                return
            }
        }
    }

    func tabBarIsVisible() ->Bool {
        return self.tabBarController?.tabBar.frame.origin.y < CGRectGetMaxY(self.view.frame)
    }


    func hideTabBar() {
        if let tabBarController = tabBarController {
            tabBarController.tabBar.hidden = true
        }
    }

    //----------------------------------------------------
    // MARK: - 3
    // MARK: maybe need: self.tabBarController?.tabBar.hidden = true
    func setTabBarVisible3(visible: Bool, animated: Bool) {
        // hide tab bar
        let frame = self.tabBarController?.tabBar.frame
        let height = frame?.size.height
        let offsetY = (visible ? -height! : height)

        // zero duration means no animation
        let duration: NSTimeInterval = (animated ? 0.3 : 0.0)

        // animate tabBar
        if frame != nil {
            UIView.animateWithDuration(duration) {
                self.tabBarController?.tabBar.frame = CGRectOffset(frame!, 0, offsetY!)
                self.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height + offsetY!)
                self.view.setNeedsDisplay()
                self.view.layoutIfNeeded()
                return
            }
        }
    }

    func tabBarIsVisible3() -> Bool {
        return self.tabBarController?.tabBar.frame.origin.y < UIScreen.mainScreen().bounds.height
    }
}

// TODO: Need to test
extension UITabBarController {
    // MARK: - 2
    func setTabBarVisible2(visible: Bool, animated: Bool) {

        // bail if the current state matches the desired state
        if (tabBarIsVisible() == visible) { return }

        // get a frame calculation ready
        let frame = self.tabBar.frame
        let height = frame.size.height
        let offsetY = (visible ? -height : height)

        // animate the tabBar
        UIView.animateWithDuration(animated ? 0.3 : 0.0) {
            self.tabBar.frame = CGRectOffset(frame, 0, offsetY)
            self.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height + offsetY)
            self.view.setNeedsDisplay()
            self.view.layoutIfNeeded()
        }
    }

    func tabBarIsVisible2() ->Bool {
        return self.tabBar.frame.origin.y < CGRectGetMaxY(self.view.frame)
    }
}
