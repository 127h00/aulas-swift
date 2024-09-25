//
//  Specialist.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 25/09/24.
//

import Foundation

// Identifiable -> vai criar uma "pk" oculta
// Codable -> para converter dados
struct Specialist: Identifiable, Codable {
    
    let id:String
    let name:String
    let crm:String
    let imageUrl:String
    let specialty:String
    let email:String
    let phoneNumber:String
    
    enum CodingKeys:String, CodingKey{
        case id
        case name:"nome"
        case crm
        case imageUrl: "image"
        case speciality: "especialidade"
        case email
        case phoneNumber: "telefone"
    }
    
    let specialist: [Specialist] = [
        Specialist(id:"1", name:"Dr. João", crm:"1234567", imageUrl:"URL", specialty:"Neurologista", email:"joao@gmail.com", phoneNumber:"19 999998876"),
        Specialist(id:"2", name:"Dra. Maria", crm:"891011", imageUrl:"URL", specialty:"Cardiologista", email:"maria@gmail.com", phoneNumber:"19 887877765")
    ]
}
