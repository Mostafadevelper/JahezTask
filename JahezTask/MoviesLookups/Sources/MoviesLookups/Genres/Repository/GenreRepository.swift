//
//  GenreRepository.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import Combine
import MANetwork

public final class GenreRepository {
    
    // MARK: - Properties
    
    private var cancellable: Set<AnyCancellable> = []
    private var client: GenreAPIClientProtocol
    
    // MARK: - Init
    
    public init(client: GenreAPIClientProtocol) {
        self.client = client
    }
    
    // MARK: - Privates
    private func convert(_ response: GenreNetworkResponse?) -> [GenreRepositoryModel]? {
        response?.genres?.compactMap({ genre in
            GenreRepositoryModel(
                id: genre.id,
                name: genre.name
            )
        })
    }
}

// MARK: - GenreRepositoryProtocol

extension  GenreRepository: GenreRepositoryProtocol {
    public func getGenre() -> AnyPublisher<[GenreRepositoryModel]?, RepositoryError> {
        return Future { [weak self] promise in
            guard let self else { return }
            client.getGenre()
                .sink(receiveCompletion: { result in
                    if case .failure(let error) = result {
                        promise(.failure(
                            RepositoryError(error: error)
                        ))
                    }
                }, receiveValue: { [weak self] response in
                    guard let self else { return }
                    promise(.success(
                        self.convert(response)
                    ))
                })
                .store(in: &cancellable)
        }
        .eraseToAnyPublisher()
    }
}