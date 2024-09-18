//
//  ContentView.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import SwiftUI

let albums = [album1, album2, album3]

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Albuns Collection").bold()
                .font(.system(size: 26))
        }
        
        VStack (spacing: 0){
                
                HStack {
                    Image(systemName: "heart")
                        .foregroundColor(.pink)
                        .font(.system(size: 20))
                    
                    Text("Favorite albuns")
                        .font(.system(size: 25))
                }
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(albums, id: \.name) { album in
                            albumCard(album: album)
                                .padding(.leading, 20)
                                .padding(.trailing, 10)
                        }
                    }
                }
            }
        
        
    }
}

#Preview {
    ContentView()
}
