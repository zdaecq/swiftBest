//
//  NSIndexPath+Extensions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 26.07.16.
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
}


// TODO: Understand

protocol IndexPath {
    var section: Int { get}
    var row: Int { get }
    static func new(row: Int, section: Int) -> IndexPath
}

extension NSIndexPath : IndexPath {

    static func new(path: [Int]) -> NSIndexPath {
        let buffer = UnsafeMutablePointer<Int>.alloc(path.count)
        for (index,pathElement) in path.enumerate() {
            buffer[index] = pathElement
        }
        return NSIndexPath(indexes: buffer, length: path.count)
    }

    static func new(row: Int, section: Int) -> IndexPath {
        return new([section, row])
    }
}

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

extension SequenceType where Self.Generator.Element : IndexPath {

    func indexPathsInSection(section: Int) -> [Self.Generator.Element] {
        let indexPaths = self.filter {
            $0.section == section
        }
        return indexPaths
    }
    func lastIndexPathInSection(section: Int) -> Self.Generator.Element {
        return indexPathsInSection(section)
            .last ?? Self.Generator.Element.new(0, section: section) as! Self.Generator.Element
    }
    func nextRowAtSection(section: Int) -> Int {
        return self.filter { section == $0.section }.reduce(Int(0)) { max($0, $1.row + 1) }
    }
    func nextIndexPathInSection(section: Int) -> Self.Generator.Element {
        let nextRow = nextRowAtSection(section)
        return Self.Generator.Element.new(nextRow, section: section) as! Self.Generator.Element
    }
}
