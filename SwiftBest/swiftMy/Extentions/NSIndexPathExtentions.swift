//
//  NSIndexPathExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 14.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Foundation

extension NSIndexPath {
    
    static func getIndexPaths(number number: Int, forSection section: Int) -> [NSIndexPath] {
        var indexPaths : [NSIndexPath] = []
        for i in 0..<number {
            let indexPath = NSIndexPath(forRow: i, inSection: section)
            indexPaths.append(indexPath)
        }
        return indexPaths
    }
}