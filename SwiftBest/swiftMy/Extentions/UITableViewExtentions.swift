//
//  UITableViewExtentions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 11.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UITableView {
    
    func dequeueReusableCell <T:UITableViewCell>(identifier: T.Type) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString) as! T
    }
    
    func dequeueReusableCell <T:UITableViewCell>(identifier: T.Type, forIndexPath indexPath:NSIndexPath) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString, forIndexPath:indexPath) as! T
    }
    
    func registerNibCell <T:UITableViewCell>(identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forCellReuseIdentifier: identifierString)
    }
    
    func registerNibHeaderFooter <T:UITableViewHeaderFooterView>(identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forHeaderFooterViewReuseIdentifier: identifierString)
    }
    
    func dequeueReusableHeaderFooterView <T:UITableViewHeaderFooterView>(identifier: T.Type) -> T  {
        let identifierString = String(identifier)
        return self.dequeueReusableHeaderFooterViewWithIdentifier(identifierString) as! T
    }
    
    func removeEmptyCells() {
        tableFooterView = UIView()
    }
}