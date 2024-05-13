//
//  ContentView.swift
//  Particle_Effect
//
//  Created by Dewashish Dubey on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Home()
                .navigationTitle("Particle Effect")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
