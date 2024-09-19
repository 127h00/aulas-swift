//
//  ContentView.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import SwiftUI

let albums = [album1, album2, album3, album4, album5, album6, album7, album8, album9, album10] // coloco quais instâncias da struct album eu vou usar para mostrar meu programa

struct ContentView: View {
    var body: some View {
        
        VStack { // crio uma coluna que conterá todos os elementos da página. de cima para baixo: o título da página, a categoria de álbuns favoritos, os cards do álbuns favoritados, a categoria de todas as instâncias de album e os cards de todos os álbuns
            
            Text("Albums Collection").bold() // componente de texto que uso para criar o "título" da página ("Coleção de álbuns) e o deixo em negrito
                .font(.title) // defino que ele vai ser um título, fazendo com que ele fique no tamanho definido pelo swift
                .padding(.bottom, 50) // adiciono um preeenchimento apenas na parte de baixo do título fazendo com que ele suba e afeste os elementos abaixo dele
        
            VStack(spacing: -18){ // crio outra coluna para a área de álbuns favoritados onde colocarei o título da categoria e os cards dos álbuns. coloquei um espaçamento negativo entre o título e os cards para aproximá-los mais porque o espaçamento 0 ainda estava muito distante na minha opinião
                
                    HStack { // crio uma linha onde vou colocar o ícone de coração ao lado do título da categoria de álbuns favoritos
                        
                        Image(systemName: "heart") // coloco um ícone de coração do sistema da apple
                            .foregroundColor(.pink) // faço esse ícone ser rosa
                            .font(.system(size: 20)) // defino o tamanho desse ícone
                        
                        Text("Favorite albums") // uso o componente Text para colocar o nome da categoria ("álbuns favoritos")
                            .font(.system(size: 25)) // defino o tamanho do texto
                    }
                    .padding(.trailing, 145) // adiciono um preenchimento do lado direito de 145 empurrando o ícone e nome para o canto esquerdo da tela
                    
                    ScrollView(.horizontal){ // crio uma view onde tudo dentro dela será rolável e defino que ela será horizontalmente rolável
                        
                        HStack{ // crio uma linha onde colocarei os cards do álbuns
                            
                            ForEach(albums, id: \.name) { album in // crio um for que passará por todos os elementos, um por um, do vetor "albums" que criei no início do código contendo as instâncias de album
                                
                                if (album.favorite) { // faço um if para verificar se o atributo que indica se o álbum é um dos meus favoritos é verdadeiro
                                    
                                    albumCard(album: album) // caso sim, ele renderizará o card desse álbum
                                        .padding(.trailing, 15) // adicionará um preenchimento de 15 do lado direito do card para que eles não fiquem muito próximos um do outro
                                }
                            }
                        }
                    }
                }
                
                // a lógica daqui é a mesma que a da área de álbuns favoritados, a única diferença está no forEach
                VStack(spacing: -18){ // crio outra coluna para a área onde estarão todas as instâncias de album, o título da categoria e os cards dos álbuns.
                    
                        HStack { // crio uma linha onde vou colocar o ícone de de quadradinhos para simular capas de álbuns ao lado do título da categoria de "meus álbuns"
                            
                            Image(systemName: "square.on.square") // coloco um ícone de quadrados sobrepostos do sistema da apple
                                .foregroundColor(.blue) // faço esse ícone ser azul
                                .font(.system(size: 20)) // defino o tamanho desse ícone
                            
                            Text("My albums")// uso o componente Text para colocar o nome da categoria ("meus álbuns")
                                .font(.system(size: 25)) // defino o tamanho do texto
                        }
                        .padding(.trailing, 190) // adiciono um preenchimento do lado direito de 190 empurrando o ícone e nome para o canto esquerdo da tela
                        
                        ScrollView(.horizontal){ // crio uma view onde tudo dentro dela será rolável e defino que ela será horizontalmente rolável
                            
                            HStack{ // crio uma linha onde colocarei os cards do álbuns
                                
                                ForEach(albums, id: \.name) { album in // crio um for que passará por todos os elementos, um por um, do vetor "albums"
                                    
                                    albumCard(album: album) // nesse caso não há 'if' porque quero que todos os álbuns, sem exceção, sejam renderizados
                                        .padding(.trailing, 15) // adicionará um preenchimento de 15 do lado direito do card para que eles não fiquem muito próximos um do outro
                                }
                            }
                        }
                    }
            
        }
        .frame(width: 350) // defino que minha VStack principal (a que está incluindo todos os elementos) terá uma largura de 350, criando assim um espaçamento nas bordas laterais, atuando como uma margem invisível para que meus itens não fiquem grudados nos cantos da tela, o que é visualmente incômdo. não defini altura porque não foi necessário nesse caso já que todos os elementos couberam perfeitamente
    }
}

#Preview {
    ContentView()
}
