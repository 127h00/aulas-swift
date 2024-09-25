//
//  ContentView.swift
//  NavigationApp
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import SwiftUI

struct SourceView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(
                    destination: DestinationView(data:"Anna")
                ){
                    Text("Navegar para o destino DestinationView")
                }
            }
        }
    }
}

#Preview {
    SourceView()
}
