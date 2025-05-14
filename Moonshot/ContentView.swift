//
//  ContentView.swift
//  Moonshot
//
//  Created by Kopácsi Barna Martin on 2025. 05. 14..
//
// Copyright © 2025 [Kopácsi Barna Martin]. All rights reserved.
// This work is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License.
// You may not use this material for commercial purposes without obtaining permission from the author.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridLayout()
                }
                else {
                    ListLayout()
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem {
                    Button(showingGrid ? "List view" : "Grid view") {
                        showingGrid.toggle()
                    }
                    .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
