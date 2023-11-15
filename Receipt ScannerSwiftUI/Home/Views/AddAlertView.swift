//
//  AddAlertView.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 15/11/2023.
//

import SwiftUI

struct AddAlertView: View {
    @State private var showingAlert = false
    @State private var showingPickerDate = false
    @State private var title = ""
    @State private var dueDateString: String = ""
    @State private var dueDate: Date = .now
    
    @Binding var reminderList: [Reminder]
    
    var body: some View {

        Button(action: {
            showingAlert.toggle()
        }, label: {
            Image("Add")
        })
        .alert("Enter your name", isPresented: $showingAlert) {
            TextField("Enter reminder title", text: $title)
            Button("OK", action: passToDatePicker)
        }
        .sheet(isPresented: $showingPickerDate) {
            VStack {
                DatePicker("Due Date", selection: $dueDate)
                    .datePickerStyle(.graphical)
                Button {
                    showingPickerDate.toggle()
                    submit()
                } label: {
                    BlueButtonAsView(text: "Done")
                }
                .padding(.bottom, 4)
            }
            .padding()
            .presentationDetents([.medium])
        }
    }

    func passToDatePicker() {
        showingPickerDate.toggle()
    }
    
    func submit() {
        let reminder = Reminder(id: UUID(), title: title, dueDate: dueDate)
        reminderList.append(reminder)
    }
}

struct AddAlertView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlertView(reminderList: .constant([]))
    }
}
