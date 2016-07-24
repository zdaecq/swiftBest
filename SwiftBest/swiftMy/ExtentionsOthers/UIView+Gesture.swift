//
//  UIView+Gesture.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// MARK: Gesture Extensions
extension UIView {
    /// http://stackoverflow.com/questions/4660371/how-to-add-a-touch-event-to-a-uiview/32182866#32182866
    /// EZSwiftExtensions
    public func addTapGesture(tapNumber tapNumber: Int = 1, target: AnyObject, action: Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions - Make sure you use  "[weak self] (gesture) in" if you are using the keyword self inside the closure or there might be a memory leak
    public func addTapGesture(tapNumber tapNumber: Int = 1, action: ((UITapGestureRecognizer) -> ())?) {
        let tap = BlockTap(tapCount: tapNumber, fingerCount: 1, action: action)
        addGestureRecognizer(tap)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions
    public func addSwipeGesture(direction direction: UISwipeGestureRecognizerDirection, numberOfTouches: Int = 1, target: AnyObject, action: Selector) {
        let swipe = UISwipeGestureRecognizer(target: target, action: action)
        swipe.direction = direction
        
        #if os(iOS)
            
            swipe.numberOfTouchesRequired = numberOfTouches
            
        #endif
        
        addGestureRecognizer(swipe)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions - Make sure you use  "[weak self] (gesture) in" if you are using the keyword self inside the closure or there might be a memory leak
    public func addSwipeGesture(direction direction: UISwipeGestureRecognizerDirection, numberOfTouches: Int = 1, action: ((UISwipeGestureRecognizer) -> ())?) {
        let swipe = BlockSwipe(direction: direction, fingerCount: numberOfTouches, action: action)
        addGestureRecognizer(swipe)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions
    public func addPanGesture(target target: AnyObject, action: Selector) {
        let pan = UIPanGestureRecognizer(target: target, action: action)
        addGestureRecognizer(pan)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions - Make sure you use  "[weak self] (gesture) in" if you are using the keyword self inside the closure or there might be a memory leak
    public func addPanGesture(action action: ((UIPanGestureRecognizer) -> ())?) {
        let pan = BlockPan(action: action)
        addGestureRecognizer(pan)
        userInteractionEnabled = true
    }
    
    #if os(iOS)
    
    /// EZSwiftExtensions
    public func addPinchGesture(target target: AnyObject, action: Selector) {
        let pinch = UIPinchGestureRecognizer(target: target, action: action)
        addGestureRecognizer(pinch)
        userInteractionEnabled = true
    }
    
    #endif
    
    #if os(iOS)
    
    /// EZSwiftExtensions - Make sure you use  "[weak self] (gesture) in" if you are using the keyword self inside the closure or there might be a memory leak
    public func addPinchGesture(action action: ((UIPinchGestureRecognizer) -> ())?) {
        let pinch = BlockPinch(action: action)
        addGestureRecognizer(pinch)
        userInteractionEnabled = true
    }
    
    #endif
    
    /// EZSwiftExtensions
    public func addLongPressGesture(target target: AnyObject, action: Selector) {
        let longPress = UILongPressGestureRecognizer(target: target, action: action)
        addGestureRecognizer(longPress)
        userInteractionEnabled = true
    }
    
    /// EZSwiftExtensions - Make sure you use  "[weak self] (gesture) in" if you are using the keyword self inside the closure or there might be a memory leak
    public func addLongPressGesture(action action: ((UILongPressGestureRecognizer) -> ())?) {
        let longPress = BlockLongPress(action: action)
        addGestureRecognizer(longPress)
        userInteractionEnabled = true
    }
}