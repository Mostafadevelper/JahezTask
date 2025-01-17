//
//  Dictionary+Extensions.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

/// To be able to add two dictionaries to each other

extension Dictionary {
  static func + (lhs: Dictionary, rhs: Dictionary?) -> Dictionary {
    if rhs == nil {
      return lhs
    } else {
      var dic = lhs
      rhs!.forEach { dic[$0] = $1 }
      return dic
    }
  }
}
