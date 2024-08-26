//
//  PersonDetailView.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 23/08/2024.
//

import SwiftUI

struct PersonCardView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(person.firstName)
                .font(.headline)
            
            Spacer()
            
            HStack {
                Label("\(person.dates.count)", systemImage: "pencil.and.list.clipboard")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        
        .padding()

    }
}

#Preview {
    PersonCardView(person: Person.sampleData[1])
}
