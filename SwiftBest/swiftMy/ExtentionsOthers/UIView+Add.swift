//
//  UIView+Add.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 24.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// Needs BlurView class
extension UIView {

    func addBlurToBackgroundWithStyle(blurEffectStyle: UIBlurEffectStyle) {

        var blurView = UIView()

        if !UIAccessibilityIsReduceTransparencyEnabled() {
            let blurEffect = UIBlurEffect(style: blurEffectStyle)
            let blurV = UIVisualEffectView(effect: blurEffect)
            blurV.frame = bounds
            blurView = blurV
        } else {
            let view = UIView(frame: bounds)
            view.backgroundColor = UIColor ( red: 0.8411, green: 0.8411, blue: 0.8411, alpha: 0.9 )
            blurView = view
        }

        blurView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]

        addSubview(blurView)
        sendSubviewToBack(blurView)
    }
}

extension UIView {

    func addImageToBackground(named named: String) {
        let image = UIImage(named: named)
        let imageView = UIImageView(frame: frame)
        imageView.image = image
        addSubview(imageView)
        sendSubviewToBack(imageView)
    }

    func addImageToBackground(image: UIImage) {
        let imageView = UIImageView(frame: frame)
        imageView.image = image
        addSubview(imageView)
        sendSubviewToBack(imageView)
    }
}
