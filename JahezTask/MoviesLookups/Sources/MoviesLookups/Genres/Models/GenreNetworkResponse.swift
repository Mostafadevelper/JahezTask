//
//  GenreNetworkResponse.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

// MARK: - GenreNetworkResponse

public struct GenreNetworkResponse: Codable {
    let genres: [Genre]?
}

// MARK: - Genre

public struct Genre: Codable {
    let id: Int?
    let name: String?
}
