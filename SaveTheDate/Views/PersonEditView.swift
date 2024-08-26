//
//  PersonEditView.swift
//  SaveTheDate
//
//  Created by Mathias Greve on 25/08/2024.
//

import SwiftUI

struct PersonEditView: View {
    
    @State var newFirstName = ""
    @State var newLastName = ""
    
    var body: some View {
        
        Form {
            Section(header: Text("Full name: \(newFirstName)")) {
                HStack {
                    TextField("First name", text: $newFirstName)
                    Button(action: {
                        withAnimation {
                            // mer action-logikk her
                            newFirstName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newFirstName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    PersonEditView()
}
