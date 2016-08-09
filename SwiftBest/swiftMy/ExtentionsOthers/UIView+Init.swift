//
//  UIView+Init.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// MARK: Custom UIView Initilizers
extension UIView {
    /// EZSwiftExtensions
    public convenience init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat) {
        self.init(frame: CGRect(x: x, y: y, width: w, height: h))
    }
    
    /// EZSwiftExtensions, puts padding around the view
    public convenience init(superView: UIView, padding: CGFloat) {
        self.init(frame: CGRect(x: superView.x + padding, y: superView.y + padding, width: superView.height - padding*2, height: superView.height - padding*2))
    }
    
    /// EZSwiftExtensions - Copies size of superview
    public convenience init(superView: UIView) {
        self.init(frame: CGRect(origin: CGPoint.zero, size: superView.size))
    }
    
    class func nibName(nibName: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(nibName: nibName, bundle: bundle)
            .instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
    
    // TODO: Test with NSBundel init nib2
    class func nibName <T: UIView>(nibName: T.Type, bundle : NSBundle? = nil) -> T {
        let nameString = String(T)
        return UINib(nibName: nameString, bundle: bundle)
            .instantiateWithOwner(nil, options: nil)[0] as! T
    }
    
    class func fromNib<T : UIView>() -> T {
        return NSBundle.mainBundle().loadNibNamed(String(T), owner: nil, options: nil)[0] as! T
    }
}
