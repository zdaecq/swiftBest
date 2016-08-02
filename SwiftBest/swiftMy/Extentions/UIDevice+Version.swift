//
//  UIDevice+Version.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 03.08.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import UIKit

extension UIDevice {
    
    /// EZSwiftExtensions - Operating system version
    public class func systemVersion() -> String {
        return UIDevice.currentDevice().systemVersion
    }
    
    /// EZSwiftExtensions - Operating system version
    public class func systemFloatVersion() -> Float {
        return (systemVersion() as NSString).floatValue
    }
    
    //TODO: Fix syntax, add docs and readme for these methods:
    //TODO: Delete isSystemVersionOver()
    // MARK: - Device Version Checks
    
    public enum Versions: Float {
        case Five = 5.0
        case Six = 6.0
        case Seven = 7.0
        case Eight = 8.0
        case Nine = 9.0
    }
    
    public class func isVersion(version: Versions) -> Bool {
        return systemFloatVersion() >= version.rawValue && systemFloatVersion() < (version.rawValue + 1.0)
    }
    
    public class func isVersionOrLater(version: Versions) -> Bool {
        return systemFloatVersion() >= version.rawValue
    }
    
    public class func isVersionOrEarlier(version: Versions) -> Bool {
        return systemFloatVersion() < (version.rawValue + 1.0)
    }
    
    public class var CURRENT_VERSION: String {
        return "\(systemFloatVersion())"
    }
    
    // MARK: iOS 5 Checks
    
    public class func IS_OS_5() -> Bool {
        return isVersion(.Five)
    }
    
    public class func IS_OS_5_OR_LATER() -> Bool {
        return isVersionOrLater(.Five)
    }
    
    public class func IS_OS_5_OR_EARLIER() -> Bool {
        return isVersionOrEarlier(.Five)
    }
    
    // MARK: iOS 6 Checks
    
    public class func IS_OS_6() -> Bool {
        return isVersion(.Six)
    }
    
    public class func IS_OS_6_OR_LATER() -> Bool {
        return isVersionOrLater(.Six)
    }
    
    public class func IS_OS_6_OR_EARLIER() -> Bool {
        return isVersionOrEarlier(.Six)
    }
    
    // MARK: iOS 7 Checks
    
    public class func IS_OS_7() -> Bool {
        return isVersion(.Seven)
    }
    
    public class func IS_OS_7_OR_LATER() -> Bool {
        return isVersionOrLater(.Seven)
    }
    
    public class func IS_OS_7_OR_EARLIER() -> Bool {
        return isVersionOrEarlier(.Seven)
    }
    
    // MARK: iOS 8 Checks
    
    public class func IS_OS_8() -> Bool {
        return isVersion(.Eight)
    }
    
    public class func IS_OS_8_OR_LATER() -> Bool {
        return isVersionOrLater(.Eight)
    }
    
    public class func IS_OS_8_OR_EARLIER() -> Bool {
        return isVersionOrEarlier(.Eight)
    }
    
    // MARK: iOS 9 Checks
    
    public class func IS_OS_9() -> Bool {
        return isVersion(.Nine)
    }
    
    public class func IS_OS_9_OR_LATER() -> Bool {
        return isVersionOrLater(.Nine)
    }
    
    public class func IS_OS_9_OR_EARLIER() -> Bool {
        return isVersionOrEarlier(.Nine)
    }
    
    /// EZSwiftExtensions
    public class func isSystemVersionOver(requiredVersion: String) -> Bool {
        switch systemVersion().compare(requiredVersion, options: NSStringCompareOptions.NumericSearch) {
        case .OrderedSame, .OrderedDescending:
            //println("iOS >= 8.0")
            return true
        case .OrderedAscending:
            //println("iOS < 8.0")
            return false
        }
    }
}
