//
//  ContentView.swift
//  TechNews
//
//  Created by Srijnasri Negi on 28/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    @Environment(\.colorScheme) var deviceMode
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                Link(destination: URL(string: post.url!)!) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                .foregroundStyle(deviceMode == .dark ? .white : .black)
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
