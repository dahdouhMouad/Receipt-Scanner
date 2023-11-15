//
//  HomeViewModel.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 15/11/2023.
//

import Foundation
 
class HomeViewModel: ObservableObject {
    @Published var reminderList: [Reminder] = []
    
    func addReminder(_ reminder: Reminder) {
        reminderList.append(reminder)
    }
    
    func removeReminder(_ reminder: Reminder) {
        if let reminderIndex = reminderList.firstIndex(where: {$0.id == reminder.id}) {
            reminderList.remove(at: reminderIndex)
        }
    }
    
    func mark(reminder: Reminder, isdone : Bool) {
        if let reminderIndex = reminderList.firstIndex(where: {$0.id == reminder.id}) {
            reminderList[reminderIndex].isDone = isdone
        }
    }
    
}
