//
//  Tela02.swift
//  Aula03-d2
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct Tela02: View {
    
    @State private var nome = "nome"
    
    var body: some View {
        
        NavigationStack {
            Text("Escreva seu nome")
            TextField("Escreva seu nome", text: $nome)
            NavigationLink(destination: Tela04()) {

                Text("Entrar")
                    
            }
        }
    }
}

struct Tela02_Previews: PreviewProvider {
    static var previews: some View {
        Tela02()
    }
}
