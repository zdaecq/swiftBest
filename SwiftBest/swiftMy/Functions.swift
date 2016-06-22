//
//  Functions.swift
//  AlamofireTest
//
//  Created by zdaecqze zdaecq on 11.06.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setStatusBarBackgroundColor(color: UIColor) {
        let newView = UIView(frame:
            CGRect(x: 0.0, y: 0.0, width: UIScreen.mainScreen().bounds.size.width, height: 20.0)
        )
        view.backgroundColor = color
        view.addSubview(newView)
    }
}



func setStatusBarBackgroundColorForApplication(color: UIColor) {
    
    guard  let statusBar = UIApplication.sharedApplication().valueForKey("statusBarWindow")?.valueForKey("statusBar") as? UIView else {
        return
    }
    
    statusBar.backgroundColor = color
}

func setStatusBarTextColor(style: UIStatusBarStyle) {
    UIApplication.sharedApplication().statusBarStyle = style
}




 /*
 Status bar text color
 
 info.plist
 View controller-based status bar appearance
 
 If you set it to YES then you should override preferredStatusBarStyle
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

 If you set it to NO then you can set the style in AppDelegate using:
    UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
 OR
    UIApplication.sharedApplication().statusBarStyle = style
 */

 /*
 Transport security has blocked a cleartext HTTP (http://) resource load since it is insecure. Temporary exceptions can be configured via your app's Info.plist file.
 
 info.plist
 App Transport Security Settings
    Allow Arbitrary Loads = YES
 
 */

