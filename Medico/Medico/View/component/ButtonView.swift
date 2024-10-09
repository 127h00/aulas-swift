//
//  ButtonView.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 09/10/24.
//

import SwiftUI

// personalização do botão
enum ButtonType{
    case primary
    case cancel
}

struct ButtonView: View {
    
    var text: String
    //botao personalizado
    var buttonType : ButtonType
    
    //construtor personalizado
    init(text:String, buttonType:ButtonType = .primary) {
        self.text = text
        self.buttonType = buttonType
    }
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 13)
            //.padding(.top)
            .background(buttonType == .primary ? Color.accentColor : Color(.cancel))
            //.background(.yellow)
            .cornerRadius(25)
    }
}

#Preview {
    ButtonView(text: "agendar consulta")
}
