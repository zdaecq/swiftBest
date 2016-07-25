//
//  Extentions.swift
//  AlamofireTest
//
//  Created by zdaecqze zdaecq on 04.06.16.
//  Copyright © 2016 zdaecqze zdaecq. All rights reserved.
//

import UIKit

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



