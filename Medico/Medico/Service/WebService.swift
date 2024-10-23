//
//  WebService.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 09/10/24.
//

import Foundation
import UIKit

// -> [Specialist]?
// o ? significa que no caso de retornar erro da api, froça o return como o nil ()

struct WebService{
    
    let baseURL = "http://localhost:3000"
    
    func scheduleAppointment(specialistID:String, patientID:String, date:String) async throws -> ScheduleAppointmentResponse? {
        let endpoint = baseURL + "/consulta"
        guard let url = URL(string: endpoint) else {
            return nil
        }
        //dados
        let appointment = ScheduleAppointmentRequest(specialist: specialistID, patient: patientID, date: date)
        
        //transforma appointment para json
        let jsonData = try JSONEncoder().encode(appointment)
        
        //classe URLRequest do swift passando a url
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        request.setValue("application/json", forHTTPHeaderField: "Content-type")
    }
    
    func downloadImage(from imageURL:String) async throws -> UIImage? {
        guard let url = URL(string: imageURL) else {
            print("Erro na URL!")
            return nil
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        return UIImage(data:data)
    }
    
    func getAllSpecialists() async throws -> [Specialist]? {
        let endpoint = baseURL + "/especialista"
        
        guard let url = URL(string: endpoint) else {
            print("Erro na URL!")
            return nil
        }
        
        // await é necessário quando uma função é assincrona
        // a função data tem dois parâmetros tupla (dado, URLResponse) equivale ao (req, res)
        
        // a const data a tupla (require, response) desmembrada
        // o response seria o tratamento de respostas, que no momento não será discutido
        let (data, _) = try await URLSession.shared.data(from: url)
        
        //JsonDecoder
        // a const specialit recebe da api os dados em bytes, o JsonDecode vai pegar o s dados em buyte e decodifica para o formato json
        let specialists = try JSONDecoder().decode([Specialist].self, from:data)
                            // o .self diz que o retorno deve ser do tipo array e não uma instância do tipo array
        
        return specialists
    }
}



/**
 a) guard = como instrução de verifocação
 evitar o aninhamento de if else excessivo, usando código limpo
 
 func exemploGuard(idade: Int){
    guard let idade = idade. idade>= 18 else{
 print("Idade inválida ou menor de 18")
    return
 }
 print("Voce é maior de iade")
}
 
 b) guard = como desempacotamneto seguro opcional
 
 func processarDados(dados: [String : Any]){
    guard let nome =  dados["nome"] as? String,
        et idade = dados["idade"] as? Int else{
    print("Dados incompletos ou inválidos")
    rerurn
 }
 
 
 */
