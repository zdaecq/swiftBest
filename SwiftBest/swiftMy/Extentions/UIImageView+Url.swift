//
//  UIImageView+Url.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 07.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIImageView {
    
    /// EZSwiftExtensions
    public func imageWithUrl(url url: String) {
        ez.requestImage(url, success: { (image) -> Void in
            if let img = image {
                self.image = img
            }
        })
    }
    
    /// EZSwiftExtensions
    public func imageWithUrl(url url: String, placeholder: UIImage) {
        self.image = placeholder
        ez.requestImage(url, success: { (image) -> Void in
            if let img = image {
                self.image = img
            }
        })
    }
    
    /// EZSwiftExtensions
    public func imageWithUrl(url url: String, placeholderNamed: String) {
        self.image = UIImage(named: placeholderNamed)
        ez.requestImage(url, success: { (image) -> Void in
            if let img = image {
                self.image = img
            }
        })
    }
}
