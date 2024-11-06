//
//  CombineAPIService.swift
//  GithubReposSearcher
//
//  Created by Viktor Drykin on 06.11.2024.
//

import Foundation
import Combine

enum CombineNetworkError: Error {
    case invalidStatusCode
    case failedToDecode
}

protocol CombineAPIService {
    func perform<Output: Decodable>(url: URL) -> AnyPublisher<Output, Error>
}
