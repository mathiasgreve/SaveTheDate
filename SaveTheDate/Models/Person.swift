//
//  Person.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 22/08/2024.
//

import Foundation

struct Person: Identifiable {
    var id: UUID
    
    let firstName: String
    let lastName: String
    var dates: [UserDate]
    
    init(id: UUID = UUID(), firstName: String, lastName: String, dates: [UserDate] ) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.dates = dates
    }
}

extension Person {
    static let sampleData: [Person] =
    [
        Person(firstName: "Labneh", lastName: "Selassie", dates: UserDate.sampleData[0]),
        Person(firstName: "Connor", lastName: "Gallagher", dates: UserDate.sampleData[1]),
    ]
}
