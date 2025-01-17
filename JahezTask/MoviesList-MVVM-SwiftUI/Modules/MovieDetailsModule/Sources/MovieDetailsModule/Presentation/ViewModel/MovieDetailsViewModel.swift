//
//  MovieDetailsViewModel.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import SwiftUI
import Combine
import Commons

final class MovieDetailsViewModel: ObservableObject {
  // MARK: - Vars
  @Published var movieDetails: MovieDetailsItem = MovieDetailsItem()
  @Published var isLoading = true
  @Published var isOffline = false
  private var cancellable: Set<AnyCancellable> = []

  // MARK: - Dependencies
  private var useCase: MovieDetailsUseCaseProtocol
  private var coordinator: MoviesCoordinatorProtocol

  init(
    useCase: MovieDetailsUseCaseProtocol,
    coordinator: MoviesCoordinatorProtocol
  ) {
    self.useCase = useCase
    self.coordinator = coordinator
  }
}

// MARK: - MovieDetailsViewModel

extension MovieDetailsViewModel {
  func showMovieDetails() {
    isLoading = true
    guard
      let selectedMovieID = coordinator.getSelectedMovieID()
    else { return }
    useCase.fetchMovieDetails(for: selectedMovieID)
      .sink { [weak self] completion in
        guard let self else {
          return
        }
        if case .failure = completion {
          isOffline = true
        }
        isLoading = false
      } receiveValue: { [weak self] details in
        guard let self else { return }
        movieDetails = details
        isLoading = false
      }
      .store(in: &cancellable)
  }

  func goBack() {
    coordinator.goBack()
  }
}
