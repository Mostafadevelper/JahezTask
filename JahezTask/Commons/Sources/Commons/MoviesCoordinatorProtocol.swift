//
//  File.swift
//  
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

public protocol MoviesCoordinatorProtocol {
  func start()
  func getSelectedMovieID() -> String?
  func showMovieDetail(with movieID: String)
  func goBack()
}
