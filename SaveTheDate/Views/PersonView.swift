//
//  PersonView.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 22/08/2024.
//

import SwiftUI

struct PersonView : View {
    
    var person: Person
    
    var body: some View {
        VStack {
            Text("Saved dates for \(person.firstName) \(person.lastName):")
                .font(.title)
                .padding()
            
            //ForEach(person.dates) { date in
            //    Text("\(date.day).\(date.month)")
            //}
            
            //ForEach(person.dates, id: \.id) { date in
            //                Text("\(date.day).\(date.month)")
            //            }
            List{
                Section(header: Text(person.firstName)) {
                    if person.dates.isEmpty {
                        Label("No dates yet", systemImage: "calendar.badge.exclamationmark")
                    }
                    ForEach(person.dates) { date in
                        HStack {
                            Image(systemName: "calendar")
                            Text("\(date.day).\(date.month).\(date.year)")
                        }
                    }
                }

            }
            
        }
    }
    

}

#Preview {
    PersonView(person: Person.sampleData[0])
}
