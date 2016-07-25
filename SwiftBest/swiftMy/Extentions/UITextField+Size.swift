//
//  UITextFieldExtensions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UITextField {
    func setLeftPadding(size: CGFloat) {
        let paddingView = UIView(frame: CGRectMake(0, 0, size, frame.height))
        leftView = paddingView
        leftViewMode = UITextFieldViewMode.Always
    }
}