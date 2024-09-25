//
//  DestinationView.swift
//  NavigationApp
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import SwiftUI

struct DestinationView: View {
    var data: String
    var body: some View{
        Text("o dado é: \(data)")
    }
}

#Preview {
    DestinationView(data: "")
}
