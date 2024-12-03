//
//  MoviesList_MVVM_SwiftUIApp.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import SwiftUI

@main
struct MoviesList_MVVM_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
          let navigationController = UINavigationController()
          let coordinator = MoviesCoordinator(navigationController: navigationController)
          MoviesCoordinatorView(coordinator: coordinator)
        }
    }
}
