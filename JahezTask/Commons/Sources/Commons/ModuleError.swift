//
//  ModuleError.swift
//
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

public enum ModuleError: Error {
  case noInternetConnection
  case notFound
  case notAuthorized
  case server
  case noData
  case unowned

  public init(error: RepositoryError) {
    switch error {
      case .noInternetConnection:
        self = .noInternetConnection
      case .server:
        self = .server
      case .notFound:
        self = .notFound
      case .notAuthorized:
        self = .notAuthorized
      default:
        self = .unowned
    }
  }
}
