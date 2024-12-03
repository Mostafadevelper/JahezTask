//
//  MovieDetailsAPIClient.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

protocol MovieDetailsAPIClientProtocol {
  func getMovieDetails(with movieID: String) -> AnyPublisher<MovieDetailsNetworkResponse, SessionDataTaskError>
}

class MovieDetailsAPIClient {
  private var client: BaseAPIClientProtocol
  init(client: BaseAPIClientProtocol) {
    self.client = client
  }
}

// MARK: - MovieDetailsAPIClientProtocol
extension MovieDetailsAPIClient: MovieDetailsAPIClientProtocol {
  func getMovieDetails(with movieID: String) -> AnyPublisher<MovieDetailsNetworkResponse, SessionDataTaskError> {
    let request = MovieDetailsAPIRequest.getMovieDetails(id: movieID)
    return client.perform(request.asURLRequest())
  }
}
