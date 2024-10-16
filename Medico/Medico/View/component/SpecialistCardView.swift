//
//  SpecialistCardView.swift
//  Medico
//
//  Created by Simone Pierini Facini Rocha on 25/09/24.
//

import SwiftUI

struct SpecialistCardView: View {
    
    //instancia de model/specialist
    var specialist: Specialist
    
    //instancia da struct webservice
    let service = WebService()
    //const que recebe uma imagem
    @State private var specialistsImage: UIImage?
    
    func downloadImage() async {
        do {
            if let image = try await service.downloadImage(from: specialist.imageUrl){
                self.specialistsImage = image
            }
        } catch {
            print ("Ocorreu um erro ao obter a imagem \(error)")
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing:16.0) {
                if let image = specialistsImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64 , height: 64)
                        .clipShape(Circle())
                }
                
                VStack(alignment: .leading, spacing:0){
                    Text(specialist.name)
                        .font(.title2)
                        .bold()
                    Text(specialist.specialty)
                        .font(.title3)
                }
            }
            ButtonView(text:"Agendar consulta")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(30)
        .background(Color(.lightGray).opacity(0.20))
        .cornerRadius(20)
        .onAppear {
            Task {
                await downloadImage()
            }
        }
        
    }
}

#Preview {
    SpecialistCardView(specialist:
        Specialist(id:"1",
                   name:"Dr. João",
                   crm:"1234567",
                   imageUrl:"qualquerCoisa1",
                   specialty:"Neurologista",
                   email:"joao@gmail.com",
                   phoneNumber:"(19)3785-7657"))
}
