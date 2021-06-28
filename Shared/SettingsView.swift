//
//  BuildView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            List{
                ScrollView{
                    VStack(spacing: 8) {
                        Text("Option 1")
                        Text("Option 2")
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .navigationTitle("Settings")
        .listStyle(SidebarListStyle())
    }
}
    

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
