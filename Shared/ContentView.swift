//
//  ContentView.swift
//  Shared
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI

struct ContentView: View{
    @State private var ShowingView = true
    
    var body: some View {
        #if os(macOS)
        NavigationView {
            VStack {
                List() {
                        Section(header: Text("System Builder")) {
                            NavigationLink(destination: AutomatedView(), isActive: $ShowingView) {
                                Label("Build", systemImage: "macpro.gen3")
                            }
                            NavigationLink(destination: FavouritedView()) {
                                Label("Favourites", systemImage: "heart")
                            }
                        }
                }
                .frame(minWidth: 150)
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {
                          NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
                        }) {
                          Image(systemName: "sidebar.left")
                        }
                    }
                }
            }
        }
        #else
        TabView {
            AutomatedView()
                .tabItem{
                    Image(systemName: "macpro.gen3")
                    Text("Build")
                }
            FavouritedView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favourites")
                }
        }
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
