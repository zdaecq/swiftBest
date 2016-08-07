//
//  UIColorExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 15/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//

import UIKit

extension UIColor {

    /// EZSE: Red component of UIColor (get-only)
    public var redComponent: Int {
        var r: CGFloat = 0
        getRed(&r, green: nil, blue: nil, alpha: nil)
        return Int(r * 255)
    }

    /// EZSE: Green component of UIColor (get-only)
    public var greenComponent: Int {
        var g: CGFloat = 0
        getRed(nil, green: &g, blue: nil, alpha: nil)
        return Int(g * 255)
    }

    /// EZSE: blue component of UIColor (get-only)
    public var blueComponent: Int {
        var b: CGFloat = 0
        getRed(nil, green: nil, blue: &b, alpha: nil)
        return Int(b * 255)
    }

    /// EZSE: Alpha of UIColor (get-only)
    public var alpha: Int {
        var a: CGFloat = 0
        getRed(nil, green: nil, blue: nil, alpha: &a)
        return Int(a)
    }
}

