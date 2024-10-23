//
//  Date+.swift
//  Medico
//
//  Created by ANNA CLARA FERRAZ on 23/10/24.
//

import Foundation

extension Date {
    
    func convertToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ" // T separa a data da hora - Z deslocamento de fuso horário
        return dateFormatter.string(from:self)
    }
}
