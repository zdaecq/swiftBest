//
//  Extentions.swift
//  AlamofireTest
//
//  Created by zdaecqze zdaecq on 04.06.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

typealias EmptyClosure = () -> ()

func delay(delay: Double, closure: EmptyClosure) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

func async(closure: EmptyClosure) {
    dispatch_async(dispatch_get_main_queue(), closure)
}


func setNavigationBarTranslucentTotal() {
    // Override point for customization after application launch.
    // Sets background to a blank/empty image
    UINavigationBar.appearance().setBackgroundImage(UIImage(), forBarMetrics: .Default)
    // Sets shadow (line below the bar) to a blank image
    UINavigationBar.appearance().shadowImage = UIImage()
    // Sets the translucent background color
    UINavigationBar.appearance().backgroundColor = UIColor.clearColor()
    // Set translucent. (Default value is already true, so this can be removed if desired.)
    UINavigationBar.appearance().translucent = true
}

//guard let userInfo = notification.userInfo else { return }
//let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
//let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
//let options = UIViewAnimationOptions(rawValue: curve.unsignedLongValue)
//
//UIView.animateWithDuration(NSTimeInterval(duration.doubleValue), delay: 0, options: options, animations: {
//    UIApplication.sharedApplication().keyWindow?.layoutIfNeeded()
//}, completion: nil)


extension UIApplication {
    class func topViewController(base: UIViewController? = UIApplication.sharedApplication().keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
}
