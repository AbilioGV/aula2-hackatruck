//
//  ContentView.swift
//  Aula02-d1
//
//  Created by Student on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0.0
    @State private var altura: Double = 0.0
    @State private var imc: Double = 0.0
    
    var backgroundColor: Color {
        switch imc {
        case ..<18.5:
            return Color("Baixo peso")
        case 18.5..<25.0:
            return Color("Normal")
        case 25.0..<30.0:
            return Color("Sobrepeso")
        default:
            return Color("Obesidade")
        }
    }
    var imcText: Text {
        switch imc {
        case ..<18.5:
            return Text("Baixo peso")
        case 18.5..<25.0:
            return Text("Normal")
        case 25.0..<30.0:
            return Text("Sobrepeso")
        default:
            return Text("Obesidade")
        }
    }
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                TextField("Digite seu peso", value: $peso, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .frame(width: 370, height: 60)
                TextField("Digite sua altura", value: $altura, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .frame(width: 370, height: 60)
                Button("Calcular") {
                    let calculoAltura = altura / 100
                    let calculoIMC = peso / (calculoAltura * calculoAltura)
                    imc = calculoIMC
                    print(imc)
                }
                Spacer()
                imcText
                    .font(.title)
                    .foregroundColor(Color.white)
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 450, height: 200)
                    .shadow(radius: 4)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
