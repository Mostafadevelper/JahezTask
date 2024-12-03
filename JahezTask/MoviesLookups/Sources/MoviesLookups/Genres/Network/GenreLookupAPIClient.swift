//
//  GenreLookupAPIClient.swift
//  JahezTask
//
//  Created by Mostafa Mahmoud on 03/12/2024.
//

import MANetwork
import Combine

public protocol GenreAPIClientProtocol {
    func getGenre() -> AnyPublisher<GenreNetworkResponse, SessionDataTaskError>
}

public class GenreAPIClient {
    
    // MARK: - Properties
    
    private var client: BaseAPIClientProtocol
    
    // MARK: - Init
    
    public init(client: BaseAPIClientProtocol) {
        self.client = client
    }
}

// MARK: - GenreAPIClientProtocol

extension GenreAPIClient: GenreAPIClientProtocol {
    public func getGenre() -> AnyPublisher<GenreNetworkResponse, SessionDataTaskError> {
        let request = GenreAPIRequest.getGenre
        return client.perform(request.asURLRequest())
    }
}

