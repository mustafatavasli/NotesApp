//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Property
    
    @State private var notes : [Note] = [Note]()
    @State private var text : String = ""
    
    // MARK: Function
    
    func save() {
        dump(notes)
    }
    
    // MARK: Body
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                Button {
                    // 1. Only run the button's action when the text field isn't empty.
                    guard text.isEmpty == false else {return }
                    // 2. Create a new note item and initialize it with the text value.
                    let note = Note(id: UUID(), text: text)
                    // 3. Add the new note item to the notes array -> Use append().
                    notes.append(note)
                    // 4. Make the text field empty.
                    text = ""
                    save()
                    // 5. Save the notes with the help of function.
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
                // .buttonStyle(BorderedButtonStyle(tint: .accentColor))
            }
            Spacer()
            
            Text("\(notes.count)")
            // Not sayısını ekranda gösterir.
        }
        .navigationTitle("Notes")
    }
}

// MARK: Preview

#Preview {
    ContentView()
}
