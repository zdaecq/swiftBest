//
//  UITabBarItem+Init.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 26.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UITabBarItem {
    convenience init(title: String, imageName: String) {
        let image = UIImage(named: imageName)
        self.init(title: title, image: image, selectedImage: nil)
    }
}