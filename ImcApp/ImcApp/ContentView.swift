//
//  ContentView.swift
//  ImcApp
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso:String = ""
    @State private var altura:String = ""
    @State private var imc:Double = 0
    @State private var mensagem:String = "Insira seus dados"
    
    func clearFields() {
        peso = ""
        altura = ""
    }
    
    var body: some View {
        VStack {
            Text("Calculadora IMC")
                .font(.title)
            
            TextField("Peso (kg)", text: $peso)
            
            TextField("Altura (m)", text: $altura)
            
            Button(
                action: {
                    if let pesoDouble = Double(peso), let alturaDouble = Double(altura), alturaDouble>0 && pesoDouble>0 {
                        
                        imc = pesoDouble/pow(alturaDouble,2.0)
                        
                        if imc >= 0.0 && imc <= 18.5{
                            mensagem = "Peso abaixo do normal"
                        } else if imc >= 18.5 && imc <= 24.9 {
                            mensagem = "Peso ideal"
                        } else if imc >= 25.0 && imc <= 29.9 {
                            mensagem = "Sobrepeso"
                        } else {
                            mensagem = "Obesidade"
                        }
                    } else {
                        imc = 0.0
                        mensagem = "inserir peso e altura"
                    }
                    clearFields()
                },
                label:{ HStack{
                    Image(systemName: "play")
                    Text("Calculadora IMC")
                        .font(.title2)
                } }
            ).padding()
            
            Text(mensagem)
                .font(.title2)
            Text("IMC: \(imc, specifier: "%.2f")")
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    ContentView()
}
