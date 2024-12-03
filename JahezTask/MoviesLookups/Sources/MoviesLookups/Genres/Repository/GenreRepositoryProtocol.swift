//
//  GenreRepositoryProtocol.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

public protocol GenreRepositoryProtocol: GenreRepositoryGettable { }

public protocol GenreRepositoryGettable {
  func getGenre() -> AnyPublisher<[GenreRepositoryModel]?, RepositoryError>
}
