//
//  FavouritedView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 27/06/2021.
//

import SwiftUI

struct FavouritedView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: GraphView()){
                    HStack{
                        Image("discord")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("Nephew's PC")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Gaming PC, price of £700")
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                        
                    })
                    }
                }
                NavigationLink(destination: GraphView()){
                    HStack{
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("Grandad's PC")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Desktop PC, price of £400")
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                    })
                    }
                }
                NavigationLink(destination: GraphView()){
                    HStack{
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("Daughter's PC")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Desktop PC, price of £350")
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                    })
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 220)
            .navigationTitle("Favourites")
        }
        .navigationTitle("Favourites")
    }
}

struct FavouritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritedView()
    }
}
