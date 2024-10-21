//
//  SearchView.swift
//  SwiftUIGitHubApp
//
//  Created by Viktor Drykin on 21.10.2024.
//

import SwiftUI

struct SearchView: View {

    @State private var userName: String = ""
    @State private var showContent: Bool = false

    var body: some View {
        ZStack(alignment: .top) {

            LinearGradient(
                colors: [
                    .background1,
                    .background1.opacity(0.6),
                    .background1.opacity(0.2),
                    .background2
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            if showContent {
                VStack(alignment: .center, spacing: 40) {
                    Text("Search GitHub\nUser's repos")
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.accentColor)
                    TextField("Enter user name", text: $userName)
                        .padding()
                        .frame(minHeight: 40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.accent, lineWidth: 1)
                        )
                        .padding(16)
                    NavigationLink(value: NavigationDestinations.repositories(userName: userName)) {
                        Text("Enter")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                .transition(.move(edge: .top))
                .padding(.top, 60)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.showContent = true
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
