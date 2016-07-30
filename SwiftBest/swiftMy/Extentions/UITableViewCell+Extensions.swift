//
//  UITableViewCellExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 14.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

extension UITableViewCell {

    //also you need remove separator insets in tableView in IB or use func removeSeparatorInsetsForEmptyCells
    func removeSeparatorInsets() {
        if self.respondsToSelector(Selector("setSeparatorInset:")) {
            self.separatorInset = UIEdgeInsetsZero
        }
        if self.respondsToSelector(Selector("setLayoutMargins:")) {
            self.layoutMargins = UIEdgeInsetsZero
        }
        //maybe will be need
        //if self.respondsToSelector(Selector("setPreservesSuperviewLayoutMargins:")) {
            //self.preservesSuperviewLayoutMargins = false
        //}
    }
}
