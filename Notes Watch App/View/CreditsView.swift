//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 14.02.2024.
//

import SwiftUI

struct CreditsView: View {
    
    // MARK: Property
    @State private var randomNumber : Int = Int.random(in: 1..<4)
    
    private var randomImage : String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            // Profile Image
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // Header
            HeaderView(title: "Credits")
            // Content
            Text("Mustafa TAVASLI")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("iOS Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

#Preview {
    CreditsView()
}
