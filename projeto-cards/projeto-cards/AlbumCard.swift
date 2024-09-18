//
//  albumCard.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import SwiftUI

struct albumCard: View {
    var album:Album
    init(album: Album) {
        self.album = album
    }
    
    var body: some View {
        VStack{
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                
                VStack (alignment: .leading, spacing: 3){
                    Text(album.name).bold()
                        .font(.system(size: 15))
                    
                    Text(album.artist)
                        .font(.system(size: 15))
                }
                
                Spacer()
    
                Text(album.releaseDate).bold()
                    .padding(5)
                    .foregroundStyle(.white)
                    .font(.system(size: 13))
                    .background(Color.blue)
                    .cornerRadius(100)

            }
            .frame(width: 160)

        }
        .frame(width: 160, height: 300)
    }
}

#Preview {
    albumCard(album:album2)
}
