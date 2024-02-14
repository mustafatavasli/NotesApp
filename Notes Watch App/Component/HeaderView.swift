//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 14.02.2024.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: Property
    
    var title : String = ""
    
    var body: some View {
        VStack {
            // Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            // Separator
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    Group {
        // CreditsView Sayfasi
        HeaderView(title: "Credits")
        // DetailView Sayfasi
        HeaderView()
    }
}
