//
//  MovieDetailsRepositoryModel.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

// MARK: - MovieDetailsRepositoryModel
struct MovieDetailsRepositoryModel {
  let id: Int?
  let originalLanguage, originalTitle, overview: String?
  let status: String?
  let posterPath: String?
  let releaseDate: String?
  let genres: [MovieDetailsGenreRepositoryModel]?
  let homepage: String?
  let budget: Int?
  let revenue, runtime: Int?
  let spokenLanguages: [SpokenLanguageRepositoryModel]?
}

// MARK: - Genre
struct MovieDetailsGenreRepositoryModel {
    let id: Int?
    let name: String?
}

// MARK: - SpokenLanguage
struct SpokenLanguageRepositoryModel {
    let englishName, name: String?
}
