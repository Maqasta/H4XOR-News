//
//  ContentView.swift
//  H4XOR-SwiftUI
//
//  Created by Данил Фролов on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView  {
            List ((networkManager.posts)) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)) {
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear() {
            self.networkManager.FetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
