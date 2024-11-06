//
//  PullRequestListViewModel.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 06.11.2024.
//

import Foundation
import Combine

class PullRequestListViewModel: ObservableObject {
    
    @Published var pullRequests: [PullRequestModel] = []

    private let apiService: PullRequestService
    private let repoName: String
    private let userName: String
    private var cancellables = Set<AnyCancellable>()

    init(apiService: PullRequestService, repoName: String, userName: String) {
        self.apiService = apiService
        self.repoName = repoName
        self.userName = userName
    }

    func fetchPullRequests() {
        apiService.fetchPullRequests(with: userName, repo: repoName)
            .map { returnedRepos in
                <#code#>
            }
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    // handle error
                    break
                }
            } receiveValue: { [weak self] repos in
                self?.pullRequests = repos
            }
            .store(in: &cancellables)
    }
}
