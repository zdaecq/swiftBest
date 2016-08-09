//
//  PHAsset+Data.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 09.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Photos

extension PHAsset {
    
    func getAll() -> (imageData: NSData, urlString: String, imageOrientation: UIImageOrientation, info: [NSObject : AnyObject]?)? {
        
        var result : (imageData: NSData, urlString: String, imageOrientation: UIImageOrientation, info: [NSObject : AnyObject]?)?
        
        let manager = PHImageManager.defaultManager()
        let option = PHImageRequestOptions()
        option.synchronous = true
        
        manager.requestImageDataForAsset(self, options: option) { (imageData, urlString, imageOrientation, info) in
            if let imageData = imageData, let urlString = urlString  {
                result = (imageData, urlString, imageOrientation, info)
            }
        }
        return result
    }
    
    func toData() -> NSData? {
        return getAll()?.imageData
    }
    
    func dataAndUrl() -> (imageData: NSData, urlString: String)? {
        guard let res = getAll() else { return nil }
        return (res.imageData, res.urlString)
    }
}