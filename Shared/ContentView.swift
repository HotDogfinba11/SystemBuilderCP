//
//  ContentView.swift
//  Shared
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: BuildView()){
                        Label("Build", systemImage: "gear")
                    }
                    NavigationLink(destination: SettingsView()){
                        Label("Settings", systemImage: "macpro.gen3")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
