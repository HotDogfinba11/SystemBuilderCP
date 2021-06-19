//
//  ContentView.swift
//  Shared
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowingView = true
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: BuildView(), isActive: $ShowingView) {
                        Label("Build", systemImage: "macpro.gen3")
                    }
                    NavigationLink(destination: SettingsView()){
                        Label("Settings", systemImage: "gear")
                    }
                }
            }
            .navigationTitle("System Builder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
