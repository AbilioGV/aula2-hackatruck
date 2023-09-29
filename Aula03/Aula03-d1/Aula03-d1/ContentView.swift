//
//  ContentView.swift
//  Aula03-d1
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                }
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                }
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
