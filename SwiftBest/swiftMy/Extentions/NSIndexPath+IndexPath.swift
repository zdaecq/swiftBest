//
//  NSIndexPath+IndexPath.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 08.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import Foundation


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