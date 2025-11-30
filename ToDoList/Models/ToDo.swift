//
//  ToDo.swift
//  ToDoList
//
//  Created by Matthew Peterson on 11/26/25.
//

import Foundation
import SwiftData

@MainActor
@Model

class ToDo {
    var item: String = ""
    var reminderIsOn = false
    var dueDate = Date.now + 60*60*24
    var notes = ""
    var isCompleted: Bool = false
    
    init(item: String = "", reminderIsOn: Bool = false, dueDate: Date = Date.now + 60*60*24, notes: String = "", isCompleted: Bool = false) {
        self.item = item
        self.reminderIsOn = reminderIsOn
        self.dueDate = dueDate
        self.notes = notes
        self.isCompleted = isCompleted
    }
}

extension ToDo {
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: ToDo.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        //Add Mock Data
        container.mainContext.insert(ToDo(item: "Create SwiftData Lessons", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "Now with iOS 26", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Go to Iron bowl", reminderIsOn: true, dueDate: Date.now + 60*60*54, notes: "Bring a sleepingbag", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Lunch with Pete Davidson", reminderIsOn: true, dueDate: Date.now + 60*60*72, notes: "Make sure to pay", isCompleted: false))
        container.mainContext.insert(ToDo(item: "Go get Christmas Tree", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "Be sure it's bigger than last year's", isCompleted: false))
        
        return container
    }
}
