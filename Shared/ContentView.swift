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
        #if os(macOS)
        NavigationView {
            VStack {
                List {
                    Image("pc-graphic")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(4)
                        .padding(.bottom, 10)
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
        #else
        NavigationView {
            TabBar()
        }
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
