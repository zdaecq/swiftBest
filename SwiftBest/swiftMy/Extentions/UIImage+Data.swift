//
//  UIImage+Data.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 25.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// EZSE: Returns compressed image to rate from 0 to 1
    public func compressImage(rate rate: CGFloat = 1) -> NSData? {
        return UIImageJPEGRepresentation(self, rate)
    }
    
    /// EZSE: Returns Image size in Bytes
    public func getSizeAsBytes() -> Int {
        return UIImageJPEGRepresentation(self, 1)?.length ?? 0
    }
    
    /// EZSE: Returns Image size in Kylobites
    public func getSizeAsKilobytes() -> Int {
        let sizeAsBytes = getSizeAsBytes()
        return sizeAsBytes != 0 ? sizeAsBytes / 1024 : 0
    }
}
