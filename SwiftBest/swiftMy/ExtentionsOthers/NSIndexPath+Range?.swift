//
//  NSIndexPath+Extensions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 26.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import Foundation

extension NSIndexPath {

    convenience init(path: [Int]) {
        let buffer = UnsafeMutablePointer<Int>.alloc(path.count)
        for (index,pathElement) in path.enumerate() {
            buffer[index] = pathElement
        }
        self.init(indexes: buffer, length: path.count)
    }

    convenience init(row: Int, section: Int) {
        let path = [section, row]
        let buffer = UnsafeMutablePointer<Int>.alloc(path.count)
        for (index,pathElement) in path.enumerate() {
            buffer[index] = pathElement
        }
        self.init(indexes: buffer, length: path.count)
    }

    public subscript (subrange: Range<Int>) -> NSIndexPath? {

        guard subrange.startIndex >= 0 else {
            return nil
        }

        let newLength = subrange.endIndex + 1 - subrange.startIndex
        guard newLength > 0 else {
            return nil
        }

        guard subrange.endIndex < length else {
            return nil
        }

        let indexes = indexesForRange(NSRange(location: subrange.startIndex, length: newLength))
        return NSIndexPath(indexes:indexes, length:newLength)
    }

    private func indexesForRange(range: NSRange) -> [Int] {
        let indexPointer: UnsafeMutablePointer<Int> = UnsafeMutablePointer.alloc(range.length)
        getIndexes(indexPointer, range: range)

        var indexes: [Int] = []
        for i in 0 ..< range.length {
            indexes.append(indexPointer[i])
        }

        return indexes
    }
}

