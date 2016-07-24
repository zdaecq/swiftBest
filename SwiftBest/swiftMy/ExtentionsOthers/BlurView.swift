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
    
    private var blurEffect: UIBlurEffect?
    
    convenience init(_ blurEffectStyle: UIBlurEffectStyle, frame: CGRect) {
        let blurEffect = UIBlurEffect(style: blurEffectStyle)
        self.init(effect: blurEffect)
        self.frame = frame
        self.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.blurEffect = blurEffect
    }
    
    func addFibrantText(text: String, fontSize: CGFloat) {
        // Vibrancy Effect
        let vibrancyEffect = UIVibrancyEffect(forBlurEffect: blurEffect!)
        let vibrancyEffectView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyEffectView.frame = self.bounds
        
        // Label for vibrant text
        let vibrantLabel = UILabel()
        vibrantLabel.text = text
        vibrantLabel.font = UIFont.systemFontOfSize(fontSize)
        vibrantLabel.sizeToFit()
        vibrantLabel.center = self.center
        
        // Add label to the vibrancy view
        vibrancyEffectView.contentView.addSubview(vibrantLabel)
        
        // Add the vibrancy view to the blur view
        self.contentView.addSubview(vibrancyEffectView)
    }
}

