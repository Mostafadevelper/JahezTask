//
//  MovieDetailsRepositoryProtocol.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

protocol MovieDetailsRepositoryProtocol: MovieDetailsRepositoryGettable { }

protocol MovieDetailsRepositoryGettable {
  func getMovieDetails(with id: String) -> AnyPublisher<MovieDetailsRepositoryModel?, RepositoryError>
}
