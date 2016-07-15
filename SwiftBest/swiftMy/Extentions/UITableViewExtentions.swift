//
//  UITableViewExtentions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 11.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeueReusableCell<T:UITableViewCell>(identifier: T.Type) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString) as! T
    }
    
    func dequeueReusableCell<T:UITableViewCell>(identifier: T.Type, forIndexPath indexPath:NSIndexPath) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString, forIndexPath:indexPath) as! T
    }
    
    func registerNibCell(identifier: String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        registerNib(nib, forCellReuseIdentifier: identifier)
    }
    
    func registerNibHeaderFooter(identifier: String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        registerNib(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
    
    func dequeueReusableHeaderFooterView <T:UITableViewHeaderFooterView>(identifier: T.Type) -> T  {
        let identifierString = String(identifier)
        return self.dequeueReusableHeaderFooterViewWithIdentifier(identifierString) as! T
    }
}