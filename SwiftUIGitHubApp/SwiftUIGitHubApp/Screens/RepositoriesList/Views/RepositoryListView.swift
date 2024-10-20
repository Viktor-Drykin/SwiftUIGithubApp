//
//  RepositoryListView.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 20.10.2024.
//

import SwiftUI

struct RepositoryListView: View {

    @ObservedObject var viewModel: RepositoryListViewModel
    var userName: String

    var body: some View {
        ScrollView {
            Text(userName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .frame(maxWidth: .infinity, alignment: .leading)

            switch viewModel.state {
            case .loading:
                ProgressView()
            case .loaded(let repoList):
                contentView(with: repoList)
            case .failed(let message):
                errorView(with: message)
            }
        }
        .scrollIndicators(.hidden)
        .padding()
        .onAppear {
            viewModel.searchRepositories()
        }
    }

    private func contentView(with repoList: [Repository]) -> some View {
        LazyVStack(
            alignment: .leading,
            spacing: 20,
            pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(repoList) { repository in
                        RepositoryItemView(repoName: repository.title, repoDescription: repository.description)
                    }
                } header: {
                    Text("Repositories")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(8)
                        .background(Color.white)
                }

            }
    }

    private func errorView(with errorText: String) -> some View {
        Text(errorText)
            .font(.title)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .transition(.move(edge: .top))
    }
}

#Preview {
    let apiService = APIClient()
    let repositoriesService = RepositoriesServiceImpl(apiService: apiService)
    let viewModel = RepositoryListViewModel(repositoriesService: repositoriesService)
    return RepositoryListView(viewModel: viewModel, userName: "John Doe")
}