//
//  UIImageExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 15/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//

import UIKit

extension UIImage {
    /// EZSE:
    public func aspectHeightForWidth(width: CGFloat) -> CGFloat {
        return (width * self.size.height) / self.size.width
    }

    /// EZSE:
    public func aspectWidthForHeight(height: CGFloat) -> CGFloat {
        return (height * self.size.width) / self.size.height
    }
}
