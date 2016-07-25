//
//  Binary.swift
//  SwiftBest
//
//  Created by zdaecqze zdaecq on 26.07.16.
//  Copyright © 2016 Bondar Yaroslav. All rights reserved.
//

import Foundation


extension Int {
    var array: [Int] {
        return description.characters.map {Int(String($0)) ?? 0}
    }
}

extension String {
    var array: [Int] {
        return characters.map {Int(String($0)) ?? 0}
    }
}

extension String {
    var hexaToInt: Int { return Int   (strtoul(self, nil, 16))     }
    var hexaToDouble: Double { return Double(strtoul(self, nil, 16))     }
    var hexaToBinary: String { return String(hexaToInt, radix: 2)        }
    var decimalToHexa: String { return String(Int(self) ?? 0, radix: 16)  }
    var decimalToBinary: String { return String(Int(self) ?? 0, radix: 2)   }
    var binaryToInt: Int { return Int   (strtoul(self, nil, 2))      }
    var binaryToDouble: Double { return Double(strtoul(self, nil, 2))      }
    var binaryToHexa: String { return String(binaryToInt, radix: 16)     }
    var cutomToInt: Int { return Int   (strtoul(self, nil, -2))     }
}

extension Int {
    var binaryString: String { return String(self, radix: 2)  }
    var hexaString: String { return String(self, radix: 16) }
    var doubleValue: Double { return Double(self) }
}
