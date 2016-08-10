//
//  UINavigationController+Extension.swift
//  Tasty
//
//  Created by Vitaliy Kuzmenko on 14/10/14.
//  Copyright (c) 2014 Vitaliy Kuz'menko. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func setTransparent() {
        setBackgroundImage(UIImage(), forBarMetrics: .Default)
        shadowImage = UIImage()
        translucent = true
    }
}