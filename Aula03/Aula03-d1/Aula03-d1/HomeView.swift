//
//  HomeView.swift
//  Aula03-d1
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List(1...50, id: \.self) {
            Text("Item, \($0)")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
