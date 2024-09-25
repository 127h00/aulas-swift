//
//  HomeView.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding(.vertical, 32)
                
                Text("Boas-vindas!")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)
                
                Text("Visual")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(.lightGray))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8)
                
                ForEach(specialists) { specialist in
                    SpecialistCardView(specialists:specialist)
                        .padding(.bottom, 8)
                }
                
            }
            .padding(.horizontal)
        }
        .top
    }
}

#Preview {
    HomeView()
}
