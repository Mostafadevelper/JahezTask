//
//  SessionDataTaskError.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

public enum SessionDataTaskError: Error {
  case failWithError(Error)
  case notValidURL
  case requestFailed
  case noData
  case notFound
  case notAuthorized
  case server
  case noInternetConnection
  case internalError(SessionDataTaskErrorResponse)
  case emptyErrorWithStatusCode(String)
}
