//
//  HomeView.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 25/09/24.
//

import SwiftUI

struct HomeView: View {
    
    // instancia a struct WebService()
    let service = WebService()
    
    // cria um vetor de specialist para atualizar a tela homeview
    @State private var specialists: [Specialist] = []
    
    func getSpecialists() async {
        do {
            if let specialists = try await service.getAllSpecialists(){
                self.specialists = specialists
            }
        } catch {
            print("Ocorreu um erro ao obter os dados dos médicos: \(error)")
        }
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false){
            
            VStack{
                
                Image(systemName: "stethoscope")
                    .resizable()
                    .scaledToFit()
                    .frame(width:80)
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
        
        .onAppear(){
            Task{
                await getSpecialists()
            }
        }
    }//Fecha View
}

#Preview {
    HomeView()
}
