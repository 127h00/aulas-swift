//
//  ScheduleAppointmentVieew.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 23/10/24.
//

import SwiftUI

struct AcheduleAppointmentView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        
        VStack{
            Text("Selecione a data e horário da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            DatePicker("Escolha a data da consulta", selection: $selectedDate)
                .datePickerStyle(.graphical)
                //.in(Date())
                .padding()
            
            Button(action:{
                print(selectedDate
                    .convertToString()
                    .convertDateStringToReadableDate()
                      
                )
            },
            label:{
                ButtonView(text: "Agendar consulta")
            })
            .padding()
            .navigationTitle("Agendar consulta")
            .onAppear{
                UIDatePicker.appearance().minuteInterval = 15
            }
            .navigationBarTitleDisplayMode(.large)
        }// fecha o Vstack
    }
}

#Preview {
    AcheduleAppointmentView()
}
