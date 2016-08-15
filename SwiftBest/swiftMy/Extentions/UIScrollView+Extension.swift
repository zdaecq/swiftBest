//
//  UIScrollView+Utilites.swift
//  WhatToCook
//
//  Created by Vitaliy Kuzmenko on 11/10/14.
//  Copyright (c) 2014 KuzmenkoFamily. All rights reserved.
//

import UIKit

extension UIScrollView {
    
    override public func sizeToFit() {
        let subviews = self.subviews 
        var rect = CGRectZero
        
        for view in subviews {
            rect = CGRectUnion(view.frame, rect)
        }
        
        contentSize = rect.size
    }
}

extension UIScrollView {
    
    func scrollToTop() {
        setContentOffset(CGPointZero, animated: true)
    }
    
    // TODO: need to check
    func scrollToBottom() {
        let bottomOffset = CGPointMake(0, contentSize.height - bounds.size.height + contentOffset.y);
        setContentOffset(bottomOffset, animated: true)
    }
}