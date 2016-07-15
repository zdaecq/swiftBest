//
//  UITableViewCellExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 14.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func removeMargins() {
        
        if self.respondsToSelector(Selector("setSeparatorInset:")) {
            self.separatorInset = UIEdgeInsetsZero
        }
        
        if self.respondsToSelector(Selector("setPreservesSuperviewLayoutMargins:")) {
            self.preservesSuperviewLayoutMargins = false
        }
        
        if self.respondsToSelector(Selector("setLayoutMargins:")) {
            self.layoutMargins = UIEdgeInsetsZero
        }
    }
}