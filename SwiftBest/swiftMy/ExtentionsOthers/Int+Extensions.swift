//
//  IntExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 16/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//
import UIKit


extension Int {
    /// EZSE: Converts integer value to a 0..<Int range. Useful in for loops.
    public var range: Range<Int> { return 0..<self }

    /// EZSE: Returns number of digits in the integer.
    public var numberOfDigits: Int {
        if self == 0 {
            return 1
        } else if Int(fabs(Double(self))) <= LONG_MAX {
            return Int(log10(fabs(Double(self)))) + 1
        } else {
            return -1; //out of bound
        }
    }
}

extension UInt {
    /// EZSE: Convert UInt to Int
    public var toInt: Int { return Int(self) }
}
