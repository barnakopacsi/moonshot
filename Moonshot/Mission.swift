//
//  Mission.swift
//  Moonshot
//
//  Created by Kopácsi Barna Martin on 2025. 05. 14..
//
// Copyright © 2025 [Kopácsi Barna Martin]. All rights reserved.
// This work is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License.
// You may not use this material for commercial purposes without obtaining permission from the author.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
