//
//  BottomNav.swift
//  SystemBuilderCP (iOS)
//
//  Created by Oliver Harrison on 20/06/2021.
//

import SwiftUI

struct TabBar: View {
  var body: some View {
    TabView {
        Text("placeholder")
            .tabItem {
                Image(systemName: "macpro.gen3")
                Text("Build")
            }
     
        Text("placeholder")
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
    }
  }
}
