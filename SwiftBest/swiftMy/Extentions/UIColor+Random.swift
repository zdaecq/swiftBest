//
//  UIColor+Random.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 07.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIColor {

    /// EZSE: Returns random UIColor with random alpha(default: false)
    public static func randomColor(randomAlpha: Bool = false) -> UIColor {
        let randomRed = CGFloat.random()
        let randomGreen = CGFloat.random()
        let randomBlue = CGFloat.random()
        let alpha = randomAlpha ? CGFloat.random() : 1.0
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: alpha)
    }
}


private extension CGFloat {
    /// SwiftRandom extension
    static func random(lower: CGFloat = 0, _ upper: CGFloat = 1) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (upper - lower) + lower
    }
}
