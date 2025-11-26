//
//  DetailView.swift
//  ToDoList
//
//  Created by Matthew Peterson on 11/25/25.
//

import SwiftUI

struct DetailView: View {
    
    var passedValue: String  // Don't intitialize it - it will be passed from the parent view
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            
            
            Text("Welcome to the new view!\n And you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            
            
            Spacer()
            
            
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
