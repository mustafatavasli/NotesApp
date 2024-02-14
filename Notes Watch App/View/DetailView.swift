//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 13.02.2024.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: Property
    
    // Notun kendisi
    let note : Note
    // Toplam not sayisi
    let count : Int
    // Notun konumunu gosterecek index degeri
    let index : Int
    
    // Credits Sayfasi Acilma
    @State private var isCreditsPresented : Bool = false
    @State private var isSettingsPresented : Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            
            // Header
            HeaderView(title: "")
            // Content
            Spacer()
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            // Footer
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })
                Spacer()
                Text("\(count) / \(index + 1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            }
            .foregroundColor(.secondary)
        }
        .padding(3)
    }
}

struct DetailView_Previews : PreviewProvider {
    static var sampleData : Note = Note(id: UUID(), text: "watchOS App")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
