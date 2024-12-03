//
//  MovieCacheManagerProtocol.swift
//  
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Foundation

public protocol MovieCacheManagerProtocol {
    func cacheMovies(_ movies: [MovieEntity])
    func getCachedMovies() -> [MovieEntity]
    func getMovie(by id: String) -> MovieEntity?
    func clearCache()
}
