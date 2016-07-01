//
//  NSLocaleExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 01.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Foundation

extension NSLocale {
    static  var currentLangugeCode : String {
        return  NSLocale.currentLocale().objectForKey(NSLocaleLanguageCode) as! String
    }
    static var currentCountryName : String {
        return NSLocale.currentLocale().displayNameForKey(NSLocaleCountryCode, value: NSLocale.currentLangugeCode)!
    }
}