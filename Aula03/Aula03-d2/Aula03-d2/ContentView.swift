//
//  ContentView.swift
//  Aula03-d2
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: Tela01()) {
                    Text("Modo 1")
                }
                NavigationLink(destination: Tela02()) {
                    Text("Modo 2")
                }
                    Button("Modo 3") {
                        showingSheet.toggle()
                    }
                    .sheet(isPresented: $showingSheet) {
                        Text("Sheet")
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
