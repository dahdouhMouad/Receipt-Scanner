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
            showingPickerDate.toggle()
        }, label: {
            Image("Add")
        })
        
        .sheet(isPresented: $showingPickerDate) {
            VStack {
                CustomTextField(title: "Enter reminder title", value: $title)
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
            .presentationDetents([.fraction(3/4)])
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
