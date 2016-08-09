//
//  UIView.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIView {
    /// EZSwiftExtensions
    public var x: CGFloat {
        get {
            return self.frame.origin.x
        } set(value) {
            self.frame = CGRect(x: value, y: self.y, width: self.width, height: self.height)
        }
    }

    /// EZSwiftExtensions
    public var y: CGFloat {
        get {
            return self.frame.origin.y
        } set(value) {
            self.frame = CGRect(x: self.x, y: value, width: self.width, height: self.height)
        }
    }

    /// EZSwiftExtensions
    public var width: CGFloat {
        get {
            return self.frame.size.width
        } set(value) {
            self.frame = CGRect(x: self.x, y: self.y, width: value, height: self.height)
        }
    }

    /// EZSwiftExtensions
    public var height: CGFloat {
        get {
            return self.frame.size.height
        } set(value) {
            self.frame = CGRect(x: self.x, y: self.y, width: self.width, height: value)
        }
    }

    /// EZSwiftExtensions
    public var left: CGFloat {
        get {
            return self.x
        } set(value) {
            self.x = value
        }
    }

    /// EZSwiftExtensions
    public var right: CGFloat {
        get {
            return self.x + self.width
        } set(value) {
            self.x = value - self.width
        }
    }

    /// EZSwiftExtensions
    public var top: CGFloat {
        get {
            return self.y
        } set(value) {
            self.y = value
        }
    }

    /// EZSwiftExtensions
    public var bottom: CGFloat {
        get {
            return self.y + self.height
        } set(value) {
            self.y = value - self.height
        }
    }

    /// EZSwiftExtensions
    public var centerX: CGFloat {
        get {
            return self.center.x
        } set(value) {
            self.center.x = value
        }
    }

    /// EZSwiftExtensions
    public var centerY: CGFloat {
        get {
            return self.center.y
        } set(value) {
            self.center.y = value
        }
    }

    /// EZSwiftExtensions
    public var origin: CGPoint {
        get {
            return self.frame.origin
        } set(value) {
            self.frame = CGRect(origin: value, size: self.frame.size)
        }
    }

    /// EZSwiftExtensions
    public var size: CGSize {
        get {
            return self.frame.size
        } set(value) {
            self.frame = CGRect(origin: self.frame.origin, size: value)
        }
    }

    /// EZSwiftExtensions
    public func leftOffset(offset: CGFloat) -> CGFloat {
        return self.left - offset
    }

    /// EZSwiftExtensions
    public func rightOffset(offset: CGFloat) -> CGFloat {
        return self.right + offset
    }

    /// EZSwiftExtensions
    public func topOffset(offset: CGFloat) -> CGFloat {
        return self.top - offset
    }

    /// EZSwiftExtensions
    public func bottomOffset(offset: CGFloat) -> CGFloat {
        return self.bottom + offset
    }

    /// EZSwiftExtensions
    public func alignRight(offset: CGFloat) -> CGFloat {
        return self.height - offset
    }
}
