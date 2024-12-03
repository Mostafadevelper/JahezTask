//
//  SessionDataTaskErrorResponse.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

public struct SessionDataTaskErrorResponse: Codable {
    let error: SessionDataTaskErrorModel?
}

public
struct SessionDataTaskErrorModel: Codable {
    let code: Int?
    let status: Int?
    let message: String?
}
