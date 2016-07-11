//
//  UIStoryboardExtentions.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 11.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIStoryboard {
    func instantiateViewControllerWithIdentifier<T>(identifier: T.Type) -> T {
        let identifierString = String(identifier)
        return instantiateViewControllerWithIdentifier(identifierString) as! T
    }
}