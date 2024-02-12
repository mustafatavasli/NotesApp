//
//  Note.swift
//  Notes Watch App
//
//  Created by Mustafa TAVASLI on 13.02.2024.
//

import Foundation

struct Note : Identifiable, Codable {
    let id : UUID
    let text : String
}
