//
//  MockCoordinator.swift
//
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation
@testable import Commons

final class MockCoordinator: MoviesCoordinatorProtocol {
    func goBack() {
    }
    
    func start() {
    }
    
    func showMovieDetail(with movieID: String) {
    }
    
    var selectedMovieID: String?
    
    func getSelectedMovieID() -> String? {
        return selectedMovieID
    }
}
