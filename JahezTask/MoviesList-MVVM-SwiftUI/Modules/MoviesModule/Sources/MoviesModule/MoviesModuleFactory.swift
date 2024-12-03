//
//  MoviesModuleFactory.swift
//  
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import MANetwork
import MoviesLookups
import Commons
import MoviesCaching

public
class MoviesModuleFactory {
  public
  static func makeModule(with coordinator: MoviesCoordinatorProtocol) -> MoviesView {
    let baseAPIClient = BaseAPIClient()
    let moviesClient = MoviesAPIClient(client: baseAPIClient)
    let genresClient = GenreAPIClient(client: baseAPIClient)
    let cacheManager = MovieCacheManager()
    let moviesRepository = MoviesRepository(
      client: moviesClient,
      cacheManager: cacheManager
    )
    let genresRepository = GenreRepository(client: genresClient)
    let useCase = MoviesUseCase(
      moviesRepository: moviesRepository,
      genresRepository: genresRepository
    )
    let viewModel = MoviesViewModel(
      useCase: useCase,
      coordinator: coordinator
    )
    let view = MoviesView(viewModel: viewModel)
    return view
  }
}

