//
//  ContentView.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 20.10.2024.
//

import SwiftUI

enum NavigationDestinations: Hashable {
    case repositories(userName: String)
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
            SearchView()
                .navigationDestination(for: NavigationDestinations.self) { screen in
                                switch screen {
                                case .repositories(let userName):
                                    let apiService = APIClient()
                                    let repositoriesService = RepositoriesServiceImpl(apiService: apiService)
                                    let viewModel = RepositoryListViewModel(repositoriesService: repositoriesService)
                                    return RepositoryListView(viewModel: viewModel, userName: userName)
                                }
                            }
        }
    }
}

#Preview {
    ContentView()
}
