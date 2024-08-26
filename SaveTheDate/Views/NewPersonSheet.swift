//
//  NewPersonSheet.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 25/08/2024.
//

import SwiftUI

struct NewPersonSheet: View {
    
    // @State private var newPerson = Person
    @Binding var isPresentingNewPersonView: Bool
    
    var body: some View{
        
        NavigationStack {
            PersonEditView()
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingNewPersonView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            //scrums.append(newScrum)
                            isPresentingNewPersonView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    NewPersonSheet(isPresentingNewPersonView: .constant(true))
}
