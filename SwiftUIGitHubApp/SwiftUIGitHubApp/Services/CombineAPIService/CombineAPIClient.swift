//
//  CombineAPIClient.swift
//  GithubReposSearcher
//
//  Created by Viktor Drykin on 06.11.2024.
//

import Foundation
import Combine

class CombineAPIClient: CombineAPIService {
    
    func perform<Output>(url: URL) -> AnyPublisher<Output, Error> where Output : Decodable {
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response in
                guard
                    let response = response as? HTTPURLResponse,
                    (200...299).contains(response.statusCode)
                else {
                    throw CombineNetworkError.invalidStatusCode
                }
                return data
            }
            .decode(type: Output.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
