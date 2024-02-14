//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 14.02.2024.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: Property
    @AppStorage("lineCount") var lineCount : Int = 1
    @State private var value : Float = 1.0
    
    // MARK: Function
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Settings")
            // Actual Line Count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // Slider
            // Custom Binding
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }
    }
}

#Preview {
    SettingsView()
}
