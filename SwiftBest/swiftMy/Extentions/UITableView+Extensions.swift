//
//  UITableViewExtentions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 11.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

// TODO: registerClass

extension UITableView {

    func registerNibCell <T: UITableViewCell>(identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forCellReuseIdentifier: identifierString)
    }

    func registerNibHeaderFooter <T: UITableViewHeaderFooterView>(identifier: T.Type) {
        let identifierString = String(identifier)
        let nib = UINib(nibName: identifierString, bundle: nil)
        registerNib(nib, forHeaderFooterViewReuseIdentifier: identifierString)
    }
}


extension UITableView {
    // use dequeueReusableCellWithIdentifier forIndexPath bcz dequeueReusableCellWithIdentifier can return nil
    func dequeueReusableCell <T: UITableViewCell>(identifier: T.Type) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString) as! T
    }

    func dequeueReusableCell <T: UITableViewCell>(identifier: T.Type, forIndexPath indexPath: NSIndexPath) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableCellWithIdentifier(identifierString, forIndexPath:indexPath) as! T
    }

    func dequeueReusableHeaderFooterView <T: UITableViewHeaderFooterView>(identifier: T.Type) -> T {
        let identifierString = String(identifier)
        return self.dequeueReusableHeaderFooterViewWithIdentifier(identifierString) as! T
    }
}


extension UITableView {

    func removeEmptyCells() {
        tableFooterView = UIView()
    }

    func removeSeparatorInsetsForEmptyCells() {
        separatorInset = UIEdgeInsetsZero
    }

    func scrollToBottomAnimated(animated: Bool) {
        let row = numberOfRowsInSection(0) - 1
        if row >= 0 {
            let indexPath = NSIndexPath(forRow: row, inSection: 0)
            scrollToIndexPath(indexPath, animated: animated)
        }
    }

    func scrollToIndexPath(indexPath: NSIndexPath, animated: Bool) {
        scrollToRowAtIndexPath(indexPath, atScrollPosition: .Bottom, animated: animated)
    }
}
