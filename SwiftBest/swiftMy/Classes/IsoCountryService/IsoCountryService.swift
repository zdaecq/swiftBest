//
//  IsoCountryService.swift
//  IsoCountryService
//
//  Created by Sidney de Koning on 09/01/15.
//  Copyright (c) 2015 Funky Monkey, www.funky-monkey.nl. All rights reserved.
//

import UIKit

class IsoCountryService {
    
    class func find( key:String ) -> IsoCountryInfo {
        var country = IsoCountries.allCountries.filter(  { $0.alpha2 == key.uppercaseString || $0.alpha3 == key.uppercaseString || $0.numeric == key } )
        return country[0]
    }
    
    class func searchByName( name:String ) -> IsoCountryInfo {
        var country = IsoCountries.allCountries.filter( { $0.name == name } )
        
        return (!country.isEmpty) ? country[0] : IsoCountryInfo(name: "", numeric: "", alpha2: "", alpha3: "", calling: "", currency: "", continent: "")
    }
    
   class func searchByCurrency( currency:String ) -> [IsoCountryInfo] {
        let country = IsoCountries.allCountries.filter(  { $0.currency == currency } )
        return country
    }
    
   class func searchByCallingCode( calllingCode:String ) -> IsoCountryInfo {
       var country = IsoCountries.allCountries.filter( { $0.calling == calllingCode } )
       return country[0]
   }
    
    class func getCurrentCountryPhoneCode() -> String {
        
        let language = NSLocale.preferredLanguages()[0]
        let index = language.endIndex.advancedBy(-2)
        let currentLanguage = language.substringFromIndex(index)
        
        let currentPhoneCode = IsoCountryService.find(currentLanguage).calling
        
        return currentPhoneCode
    }
    
    class func getCurrentCountryName() -> String {
        
        let language = NSLocale.preferredLanguages()[0]
        let index = language.endIndex.advancedBy(-2)
        let currentLanguage = language.substringFromIndex(index)
        
        let currentCountryName = IsoCountryService.find(currentLanguage).name
        
        return currentCountryName
    }
}
