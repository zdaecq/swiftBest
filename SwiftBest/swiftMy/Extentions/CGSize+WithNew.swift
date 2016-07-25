//
//  CGSize+WithNew.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 25.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import CoreGraphics

extension CGSize {
    
    func withHeight(height: CGFloat) -> CGSize {
        var size = self
        size.height = height
        return size
    }
    
    func withWidth(width: CGFloat) -> CGSize {
        var size = self
        size.width = width
        return size
    }
}