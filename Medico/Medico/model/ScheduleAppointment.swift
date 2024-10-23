//
//  ScheduleAppointment.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 23/10/24.
//

import Foundation

// protocolo Identifiable retorna um ID único
struct ScheduleAppointmentResponse: Codable, Identifiable {
    let id: String
    let specialist: String
    let patient: String
    let date: String
    let reasonToCancel: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case specialist = "especialista"
        case patient = "paciente"
        case date = "data"
        let reasonToCancel = "motivoCancelamento"
    }
}


//protocolo Codeable: decodificar e codificar dados Json
struct ScheduleAppointmentRequest: Codable {
    let specialist: String
    let patient: String
    let date: String
    
    //vem do json em portugues e transforma para os atributos em ingles
    enum CodingKeys: String, CodingKey {
        case specialist = "especialista"
        case patient = "paciente"
        case date = "data"
    }
}
