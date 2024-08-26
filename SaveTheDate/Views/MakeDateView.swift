import SwiftUI

struct MakeDateView: View {
    @State private var day: String = ""
    @State private var month: String = ""
    @State private var year: String = ""
    @State private var hour: String = ""
    @State private var minute: String = ""
    
    @State private var storedDate: UserDate? = nil
    @State private var notificationScheduled = false
    
    @State private var selectedDate = Date()
    let notify = NotificationHandler()
    
    var body: some View {
        VStack {
            Text("Enter Date and Time for Notification")
                .font(.title)
                .padding()

            TextField("Day", text: $day)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)

            TextField("Month", text: $month)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)

            TextField("Year", text: $year)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)

            TextField("Hour (24h format)", text: $hour)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)

            TextField("Minute", text: $minute)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)
            
            Spacer()

            DatePicker("Pick a date: ", selection: $selectedDate, in: Date()...)
            Button("Save date") {
                NotificationHandler.instance.sendNotification(date: selectedDate, type: "date", title:"halla", body: "Her er datoien du satte")
            }
            
            Spacer()
            Button("Request permission") {
                NotificationHandler.instance.askPermission()
            }

        }
        .padding()
    }

}

#Preview {
    MakeDateView()
}
