//
//  MovieDetailsModuleFactory.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import MANetwork
import Commons

public
class MovieDetailsModuleFactory {
  public
  static func makeModule(with coordinator: MoviesCoordinatorProtocol) -> MovieDetailView {
    let baseAPIClient = BaseAPIClient()
    let movieDetailsClient = MovieDetailsAPIClient(client: baseAPIClient)
    let repository = MovieDetailsRepository(client: movieDetailsClient)
    let useCase = MovieDetailsUseCase(repository: repository)
    let viewModel = MovieDetailsViewModel(
      useCase: useCase,
      coordinator: coordinator
    )
    let view = MovieDetailView(viewModel: viewModel)
    return view
  }
}