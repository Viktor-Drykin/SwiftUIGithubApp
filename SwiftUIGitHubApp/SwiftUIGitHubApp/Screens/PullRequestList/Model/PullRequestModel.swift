//
//  PullRequestModel.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 06.11.2024.
//

import Foundation

struct PullRequestModel {
    let title: String
    let number: String
    let name: String
    let createdAt: String
    let closedAt: String
    let state: String?
}

extension PullRequestModel {
    init(with prDTO: PullRequestDTO) {
        self.init(title: prDTO., number: <#T##String#>, name: <#T##String#>, createdAt: <#T##String#>, closedAt: <#T##String#>, state: <#T##String?#>)
    }
}
