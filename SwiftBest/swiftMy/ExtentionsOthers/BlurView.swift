//
//  OCCustomEffects.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 29.04.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Foundation
import UIKit


class BlurView: UIVisualEffectView {
    
    convenience init(_ blurEffectStyle: UIBlurEffectStyle, frame: CGRect) {
        let blurEffect = UIBlurEffect(style: blurEffectStyle)
        self.init(effect: blurEffect)
        self.frame = frame
        autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    }
}

