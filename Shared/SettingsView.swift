//
//  BuildView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI

struct SettingsView: View {
    static var github = "https://github.com/HotDogfinba11/SystemBuilderCP"
    var body: some View {
        #if os(macOS)
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .frame(width: 500, height: 250)
        #else
        NavigationView {
            GeneralSettingsView()
                .navigationTitle("Settings")
        }
        #endif
    }
}

struct GeneralSettingsView: View {
    var body: some View {
        Form {
            Section(header: Text("Retailers"),
                    footer: Text("Disabling retailers will prevent the automatic PC builder from using said retailers")) {
                Toggle(isOn: .constant(true),
                       label: {
                        Text("Amazon")
                       })
                Toggle(isOn: .constant(true),
                       label: {
                        Text("Scan")
                       })
                Toggle(isOn: .constant(true),
                       label: {
                        Text("Curry's PC World")
                       })
            }
            Section(header: Text("About"),
                    footer: Text("A-level programming project")) {
                Link("Source code is available on Github", destination: URL(string: "http://github.com/HotDogfinba11/SystemBuilderCP")!)
                Label("Version 0.1", systemImage: "info.circle")
            }
        }
    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
