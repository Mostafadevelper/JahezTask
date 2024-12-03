//
//  MovieCacheManager.swift
//
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import RealmSwift

public class MovieCacheManager {
    
    // MARK: - Properties
    
    private let realm: Realm?
    
    // MARK: - Init
    
    public init() {
        self.realm = RealmManager.shared.getRealm()
    }
}

extension MovieCacheManager: MovieCacheManagerProtocol {
    
    public func cacheMovies(_ movies: [MovieEntity]) {
        guard let realm = realm else {
            print("Realm is not initialized")
            return
        }
        
        do {
            try realm.write {
                realm.add(movies, update: .all)
            }
        } catch {
            print("Failed to cache movies: \(error.localizedDescription)")
        }
    }
    
    public func getCachedMovies() -> [MovieEntity] {
        guard let realm = realm else {
            print("Realm is not initialized")
            return []
        }
        
        let movies = realm.objects(MovieEntity.self)
        return Array(movies)
    }
    
    public func getMovie(by id: String) -> MovieEntity? {
        guard let realm = realm else {
            print("Realm is not initialized")
            return nil
        }
        
        return realm.object(ofType: MovieEntity.self, forPrimaryKey: id)
    }
    
    public func clearCache() {
        guard let realm = realm else {
            print("Realm is not initialized")
            return
        }
        
        do {
            try realm.write {
                realm.delete(realm.objects(MovieEntity.self))
            }
        } catch {
            print("Failed to clear cache: \(error.localizedDescription)")
        }
    }
}
