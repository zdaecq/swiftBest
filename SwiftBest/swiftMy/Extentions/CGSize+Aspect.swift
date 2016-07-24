//
//  CGSize+Aspect.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 25.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import CoreGraphics

extension CGSize {
    
    func aspectRatioForWidth(newWidth: CGFloat) -> CGSize {
        let newHeight = height * newWidth / width
        return CGSizeMake(ceil(newWidth), ceil(newHeight))
    }
    
    func aspectRatioForHeight(newHeight: CGFloat) -> CGSize {
        let newWidth = width * newHeight / height
        return CGSizeMake(ceil(newWidth), ceil(newHeight))
    }
    
}