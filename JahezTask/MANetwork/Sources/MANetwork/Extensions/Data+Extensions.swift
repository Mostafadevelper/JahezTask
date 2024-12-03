//
//  Data+Extensions.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

extension Data {
  mutating func append(_ string: String) {
    if let data = string.data(using: .utf8) {
      append(data)
    }
  }
}
