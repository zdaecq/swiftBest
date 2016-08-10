//
//  NSIndexPath+GetArray.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 08.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import Foundation

extension NSIndexPath {
    
    static func getIndexPaths(number number: Int, forSection section: Int) -> [NSIndexPath] {
        var indexPaths: [NSIndexPath] = []
        for i in 0..<number {
            let indexPath = NSIndexPath(forRow: i, inSection: section)
            indexPaths.append(indexPath)
        }
        return indexPaths
    }
    
    static func getIndexPaths(range range: Range<Int>, forSection section: Int) -> [NSIndexPath] {
        var indexPaths: [NSIndexPath] = []
        for i in range {
            let indexPath = NSIndexPath(forRow: i, inSection: section)
            indexPaths.append(indexPath)
        }
        return indexPaths
    }
    
    static func getIndexPaths(indexes array: [Int], forSection section: Int) -> [NSIndexPath] {
        var indexPaths: [NSIndexPath] = []
        for i in array {
            let indexPath = NSIndexPath(forRow: i, inSection: section)
            indexPaths.append(indexPath)
        }
        return indexPaths
    }
}