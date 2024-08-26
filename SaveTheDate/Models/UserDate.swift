//
//  UserDate.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 15/08/2024.
//

import Foundation

struct UserDate: Identifiable {
    let id: UUID
    
    var day: Int
    var month: Int
    var year: Int
    var hour: Int   // kan fjernes etter hvert
    var minute: Int // kan fjernes etter hvert
    
    var dateComponents: DateComponents {
        var components = DateComponents()
        components.day = day
        components.month = month
        components.year = year
        components.hour = hour
        components.minute = minute
        return components
    }
}

extension UserDate {
    static let sampleData: [[UserDate]] =
    [
        [
            UserDate(id: UUID(), day: 01, month: 11, year: 2024, hour: 13, minute: 11),
            UserDate(id: UUID(), day: 12, month: 10, year: 2024, hour: 10, minute: 19),
            UserDate(id: UUID(), day: 13, month: 5, year: 2024, hour: 10, minute: 59),
        ],
        
        [
            UserDate(id: UUID(), day: 15, month: 01, year: 2025, hour: 13, minute: 11),
            UserDate(id: UUID(), day: 02, month: 10, year: 2024, hour: 18, minute: 08),
        ],

    ]
}
