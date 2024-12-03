//
//  Print+Extensions.swift
//  
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

/// Shadowing , To avoid having print statements on production (Only runs in debugging mode)
public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
        Swift.print(items, separator: separator, terminator: terminator)
    #endif
}
