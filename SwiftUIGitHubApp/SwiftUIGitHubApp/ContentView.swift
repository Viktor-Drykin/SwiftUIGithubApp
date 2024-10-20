//
//  ContentView.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 20.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let apiService = APIClient()
        let repositoriesService = RepositoriesServiceImpl(apiService: apiService)
        let viewModel = RepositoryListViewModel(repositoriesService: repositoriesService)
        return RepositoryListView(viewModel: viewModel, userName: "John Doe")
    }
}

#Preview {
    ContentView()
}
