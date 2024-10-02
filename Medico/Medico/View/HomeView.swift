//
//  HomeView.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 25/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false){
            
            VStack{
                
                Image(systemName: "globe")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200)
                    .padding(.vertical, 32)
                
                Text("Boas-vindas!")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(.lightGray))
                
                Text("Lista de médicos:")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,8)
                ForEach(specialists) { specialist in
                    SpecialistCardView(specialist: specialist)
                        .padding(.bottom,8)
                }
                
            }//fecha VStack
            .padding(.horizontal)
        }//Fecha ScrollView
        .padding(.top)
    }//Fecha View
}

#Preview {
    HomeView()
}
