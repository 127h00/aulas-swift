//
//  ContentView.swift
//  list
//
//  Created by ANNA CLARA FERRAZ on 11/09/24.
//

import SwiftUI

// struct Nome
//struct ContentView: View {
//    var body: some View {
//        VStack { // pilha vertical
//            Image(systemName: "globe") // Image é uma view
//                .imageScale(.large) // propriedade do Image
//                .foregroundStyle(.pink)
//            Text("Hello, world!")
//        }
//        .padding() // propriedade de VStack
//    }
//}

struct ContentView: View {
    
    @State private var musica:String=""
    @State private var arrayMusicas : [String] = []
    // @State é do swiftUi, diz q a variavel vai ter seu valor modificado
    
    var body: some View {
        NavigationView { // tela scrollavel
            
            VStack {
                Text("Monte sua playlist 𝜗𝜚⋆₊˚")
                    .font(.system(size: 30, design: .rounded))
                    .foregroundColor(.pink)
                
                HStack{
                    TextField("Digite o nome de uma música e o artista", text: $musica) // input text
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(.pink) // muda a cor do texto na hora que digita
                        .accentColor(.mint)
                    
                    Button("Add"){
                        if (musica != "") {
                            arrayMusicas.append(musica)
                            musica = ""
                        }
                    }
                    .padding()
                    .foregroundColor(.mint)
                }
                .padding()
                
                List{
                    //para cada elemtno do array de musicas eu vou percorrer indeice por indice e jogo numa variavel m o valor daqiela possição e coloco (transformo?) num texto o que tem naquela posição
                    ForEach(arrayMusicas, id: \.self){
                        m in Text(m)
                    }
                    // indexSet para nos pensarmos q eh o indice do que foi selecionado
                    .onDelete { i in // esse é pra lista (a view em si, o List)
                        i.forEach{ index in // esse é para o array
                            arrayMusicas.remove(at: index)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding()
        }
        .colorScheme(.light)
        
    }
}

#Preview {
    ContentView() // é o que faz ele ficar atualizando automaticamente
}
