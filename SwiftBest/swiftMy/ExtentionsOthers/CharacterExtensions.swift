//
//  CharacterExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 3/1/16.
//  Copyright © 2016 Goktug Yilmaz. All rights reserved.
//

import Foundation

extension Character {
    /// EZSE: Converts Character to String
    public var toString: String { return String(self) }

    /// EZSE: If the character represents an integer that fits into an Int, returns the corresponding integer.
    public var toInt: Int? { return Int(String(self)) }
}
