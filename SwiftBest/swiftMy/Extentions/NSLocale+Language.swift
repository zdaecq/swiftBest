//
//  NSLocaleExtentions.swift
//  OrderApp-Customer-iOS
//
//  Created by Yaroslav Bondar on 01.07.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Foundation

// TODO: "if let" or "guard let"
extension NSLocale {

    static  var currentLanguageCode: String {
        return  NSLocale.currentLocale().objectForKey(NSLocaleLanguageCode) as! String
    }

    static var currentCountryName: String {
        return NSLocale.currentLocale().displayNameForKey(NSLocaleCountryCode, value: NSLocale.currentLanguageCode)!
    }
}


// TODO: try this
// MARK: - Normal
extension NSLocale {

    class func languageAvailable() -> Array<String> {
        var array = Array<String>()
        let appleLanguages = NSUserDefaults.standardUserDefaults().objectForKey("AppleLanguages") as! [String]

        for language in appleLanguages {
            let path = NSBundle.mainBundle().pathForResource(language, ofType: "lproj")

            if path != nil {
                array.append(language)
            }
        }

        return array
    }

    class func languageCode() -> String {

        let languageAvailable = self.languageAvailable()
        let preferredLanguages = NSLocale.preferredLanguages()
        var currentLanguage = preferredLanguages.first

        if !languageAvailable.contains(currentLanguage!) {
            currentLanguage = "en"
        }

        return currentLanguage!
    }

}

extension NSLocale {
    var decimalSeparator: String {
        return objectForKey(NSLocaleDecimalSeparator) as! String
    }
}

import CoreTelephony
public func defaultRegionCode() -> String {
    //1
    if let carrier = CTTelephonyNetworkInfo().subscriberCellularProvider {
        if let isoCountryCode = carrier.isoCountryCode {
            return isoCountryCode.uppercaseString
        }
    }
    
    //2
    if let countryCode = NSLocale.currentLocale().objectForKey(NSLocaleCountryCode) as? String {
        return countryCode
    }
    //3
    return "en"
}
