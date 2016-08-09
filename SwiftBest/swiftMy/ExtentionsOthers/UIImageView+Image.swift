//
//  UIImageViewExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 15/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//

import UIKit

extension UIImageView {

    /// EZSwiftExtensions, scales this ImageView size to fit the given width
    public func scaleImageFrameToWidth(width width: CGFloat) {
        guard let image = image else {
            print("EZSwiftExtensions Error: The image is not set yet!")
            return
        }
        let widthRatio = image.size.width / width
        let newWidth = image.size.width / widthRatio
        let newHeigth = image.size.height / widthRatio
        frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: newWidth, height: newHeigth)
    }

    /// EZSwiftExtensions, scales this ImageView size to fit the given height
    public func scaleImageFrameToHeight(height height: CGFloat) {
        guard let image = image else {
            print("EZSwiftExtensions Error: The image is not set yet!")
            return
        }
        let heightRatio = image.size.height / height
        let newHeight = image.size.height / heightRatio
        let newWidth = image.size.width / heightRatio
        frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: newWidth, height: newHeight)
    }

    /// EZSwiftExtensions
    public func roundImage() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
