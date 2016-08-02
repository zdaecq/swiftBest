//
//  UIDeviceExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 15/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//

import UIKit


extension UIDevice {
    
    /// EZSwiftExtensions
    public class func idForVendor() -> String? {
        return UIDevice.currentDevice().identifierForVendor?.UUIDString
    }

    /// EZSwiftExtensions - Operating system name
    public class func systemName() -> String {
        return UIDevice.currentDevice().systemName
    }

    /// EZSwiftExtensions
    public class func deviceName() -> String {
        return UIDevice.currentDevice().name
    }

    /// EZSwiftExtensions
    public class func deviceLanguage() -> String {
        return NSBundle.mainBundle().preferredLocalizations[0]
    }

    /// EZSE: Returns true if the device is iPhone
    public class func isPhone() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone
    }
    
    /// EZSE: Returns true if the device is iPad
    public class func isPad() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad
    }

    /// EZSwiftExtensions
    public class func deviceModel() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)

        let machine = systemInfo.machine
        var identifier = ""
        let mirror = Mirror(reflecting: machine)

        for child in mirror.children {
            let value = child.value

            if let value = value as? Int8 where value != 0 {
                identifier.append(UnicodeScalar(UInt8(value)))
            }
        }

        return identifier
    }
}
