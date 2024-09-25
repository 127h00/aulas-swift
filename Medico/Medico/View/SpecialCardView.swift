//
//  SpecialCardView.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import SwiftUI

struct SpecialCardView: View {
    
    var specialist: Specialist
    
    var body: some View {
        VStack(alignment: .leading)
        {
            HStack(spacing: 16.0){
                Image(systemName: "bee")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 8.0){
                    Text(specialist.name)
                        .font(.title3)
                        .bold()
                }
            }
            Text(specialist.specialty)
        }
    }
}

#Preview {
    SpecialCardView()
}
