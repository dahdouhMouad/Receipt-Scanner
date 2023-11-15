//
//  Reminder.swift
//  Receipt ScannerSwiftUI
//
//  Created by Macbook Pro on 15/11/2023.
//

import Foundation

struct Reminder: Codable, Identifiable {
    let id: UUID
    var title: String
    var creationDate: Date = Date()
    var dueDate: Date
    var isDone: Bool = false
}
