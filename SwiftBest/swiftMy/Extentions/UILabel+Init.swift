//
//  UILabel+Init.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 07.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// EZSwiftExtensions: fontSize: 17
    public convenience init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat) {
        self.init(x: x, y: y, w: w, h: h, fontSize: 17)
    }
    
    /// EZSwiftExtensions
    public convenience init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat, fontSize: CGFloat) {
        self.init(frame: CGRect(x: x, y: y, width: w, height: h))
        font = UIFont.HelveticaNeue(type: FontType.None, size: fontSize)
        backgroundColor = UIColor.clearColor()
        clipsToBounds = true
        textAlignment = NSTextAlignment.Left
        userInteractionEnabled = true
        numberOfLines = 1
    }
}
