//
//  PullRequestServiceImpl.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 06.11.2024.
//

import Foundation
import Combine

enum PullRequestServiceError: Error, Comparable {
    case incorrectURL
    case invalidStatusCode
    case failedToDecode
    case empty
}

class PullRequestServiceImpl {
    private enum Constant {
        static let userNamePlaceholder = "#USER_NAME#"
        static let repoPlaceholder = "#REPO#"
    }
    private let domain = "https://api.github.com"
    private let apiService: CombineAPIService

    init(apiService: CombineAPIService) {
        self.apiService = apiService
    }
}

extension PullRequestServiceImpl: PullRequestService {
    func fetchPullRequests(with user: String, repo: String) -> AnyPublisher<[PullRequestDTO], Error> {
        var urlPath = domain + "/repos/\(Constant.userNamePlaceholder)/\(Constant.repoPlaceholder)/pulls"
        urlPath.replace(Constant.userNamePlaceholder, with: user)
        urlPath.replace(Constant.repoPlaceholder, with: repo)
        guard let url = URL(string: urlPath) else {
            return Fail(error: PullRequestServiceError.incorrectURL)
                .eraseToAnyPublisher()
        }
        return apiService.perform(url: url)
    }
    

}
