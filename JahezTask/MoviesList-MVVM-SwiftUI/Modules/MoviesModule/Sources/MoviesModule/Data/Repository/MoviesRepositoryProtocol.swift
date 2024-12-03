//
//  MoviesRepositoryProtocol.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

protocol MoviesRepositoryProtocol: MoviesRepositoryGettable { }

protocol MoviesRepositoryGettable {
  func getMovies(for currentPage: Int) -> AnyPublisher<MoviesRepositoryModel?, RepositoryError>
  func getSearchedMovies(
    with searchedText: String,
    and searchPage: Int
  ) -> AnyPublisher<MoviesRepositoryModel?, RepositoryError>
}
