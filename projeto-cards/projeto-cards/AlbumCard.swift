//
//  albumCard.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import SwiftUI

// Crio um Card pro meu álbum (mesmo que não seja a mesma coisa, para mim se assemelha a criar um componente em react, onde você cria o formato e depois pode utilizá-lo onde quiser)
struct albumCard: View {
    var album:Album
    init(album: Album) {
        self.album = album
    }
    
    var body: some View {
        VStack{ // crio uma coluna onde estarão dispostos de cima para baixo: a capa do álbum e os dados do álbum
            
            Image(album.image) // coloco o componente de imagem onde passo como parâmetro o atributo de imagem da struct album
                .resizable() //faz com que minha imagem fique dentro do espaço que eu defina para ela, faz ser possível eu modificar o tamanho dela
                .aspectRatio(contentMode: .fit) // faz com que minha imagem se "encaixe" no tamanho que eu estipulei sem deixa-lá "esticada" / sem "deformá-la"
            
            HStack{ // crio uma linha onde colocarei as informações do álbum, vou mostrar o nome do álbum e o artista ao lado do ano de lançamento
                
                VStack (alignment: .leading, spacing: 3){ // coluna para mostrar o nome do álbum acima do artista // coloquei o alinhamento como .leading que faz com que os componentes fiquem na alinhados a esquerda e coloquei um espaçamente entre eles de 3
                    
                    Text(album.name).bold() // Componente de texto onde coloco o atributo de nome do álbum e o deixo em negrito
                        .font(.system(size: 15)) // defino o tamanho do texto
                        .lineLimit(2) // defino que o máximo de linhas que o nome do álbum pode ocupar são duas, fazendo que caso ele ultrapasse esse limite ele substítua o texto restante com reticências
                    
                    Text(album.artist) // Componente de texto onde coloco o atributo de nome do artista
                        .font(.system(size: 15)) // defino o tamanho do texto
                        .lineLimit(1) // defino que o máximo de linhas que o nome do artista pode ocupar é uma
                }
                
                Spacer() // faço com que haja o máximo de espaço entre os elementos acima (nesse caso a VStack) e do componente abaixo (nesse caso o Text), fazendo isso eu acabo empurrando esses elementos para os cantos da minha VStack principal (a primeira criada)
    
                Text(album.releaseYear).bold() // Componente de texto onde coloco o atributo de ano de lançamento do álbum e o coloco em negrito
                    .padding(5) // coloco um preenchimento de 5 ao redor do meu Text
                    .foregroundStyle(.white) // coloco o texto na cor branca
                    .font(.system(size: 13)) // defino o tamanho do texto
                    .background(Color.blue) // coloco a cor de fundo do componente Text como azul
                    .cornerRadius(100) // faço as bordas do componente ficarem 100% arredondadas
            }
            .frame(width: 160, height: 60) // defino uma altura e largura para o minha caixa de informações, isso faz com que mesmo que o nome do álbum tenha apenas uma linha a altura do card não fique desproporcional aos demais álbuns que contenham duas
        }
        .frame(width: 160, height: 300) // defino uma altura e largura fixa para o meu albumCard
    }
}

#Preview {
    albumCard(album:album2) // teste
}
