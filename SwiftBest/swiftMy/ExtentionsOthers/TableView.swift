//
//  TableView.swift
//  OrderAppManager
//
//  Created by  Poponov Vitaly on 03.06.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import UIKit

class TableView: UITableView {
    override func intrinsicContentSize() -> CGSize {
        self.layoutIfNeeded()
        return CGSizeMake(UIViewNoIntrinsicMetric, self.contentSize.height);
    }
}
