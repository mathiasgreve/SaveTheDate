//
//  PersonsListView.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 22/08/2024.
//

import SwiftUI

struct PersonsListView: View {
    
    var persons: [Person]
    @State private var isPresentingNewPersonView = false
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: ()->Void

    
    var body: some View {
        
        NavigationStack{
            List(persons) {person in
                NavigationLink(destination: PersonView(person: person)) {
                    PersonCardView(person: person)
                }
            }
            .navigationTitle("Personer")
            .toolbar {
                Button(action: {
                    isPresentingNewPersonView = true
                }){
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isPresentingNewPersonView, content: {
            NewPersonSheet(isPresentingNewPersonView: $isPresentingNewPersonView)
        })
        .onChange(of: scenePhase) {phase in
            if phase == .inactive {saveAction()}
        }
        
    }
}

#Preview {
    PersonsListView(persons: Person.sampleData, saveAction: {})
}
