//
//  CEMKit+CGFloat.swift
//
//
//  Created by Cem Olcay on 12/08/15.
//
//

import UIKit

extension CGFloat {

    /// EZSE: Converts angle degrees to radians.
    public static func degreesToRadians (angle: CGFloat) -> CGFloat {
        return (CGFloat (M_PI) * angle) / 180.0
    }
    
    /// EZSwiftExtensions
    public func degreesToRadians() -> CGFloat {
        return (CGFloat (M_PI) * self) / 180.0
    }

    /// EZSwiftExtensions
    public mutating func degreesToRadiansInPlace() {
        self = (CGFloat (M_PI) * self) / 180.0
    }
}
