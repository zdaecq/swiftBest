//
//  UILabel+Size.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 07.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// EZSwiftExtensions
    public func getEstimatedSize(width: CGFloat = CGFloat.max, height: CGFloat = CGFloat.max) -> CGSize {
        return sizeThatFits(CGSize(width: width, height: height))
    }
    
    /// EZSwiftExtensions
    public func getEstimatedHeight() -> CGFloat {
        return sizeThatFits(CGSize(width: width, height: CGFloat.max)).height
    }
    
    /// EZSwiftExtensions
    public func getEstimatedWidth() -> CGFloat {
        return sizeThatFits(CGSize(width: CGFloat.max, height: height)).width
    }
    
    /// EZSwiftExtensions
    public func fitHeight() {
        self.height = getEstimatedHeight()
    }
    
    /// EZSwiftExtensions
    public func fitWidth() {
        self.width = getEstimatedWidth()
    }
    
    /// EZSwiftExtensions
    public func fitSize() {
        self.fitWidth()
        self.fitHeight()
        sizeToFit()
    }
}
