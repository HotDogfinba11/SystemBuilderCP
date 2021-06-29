//
//  FavouritedView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 27/06/2021.
//

import SwiftUI

struct PCType: Identifiable {
    let id: Int
    let name: String
    let type: String
    let price: String
}

struct FavouritedView: View {
    @State var PCList = [
        PCType(id: 0, name: "Nephew's PC", type: "discord", price: "£700"),
        PCType(id: 1, name: "Grandad's PC", type: "apple", price: "£400"),
        PCType(id: 2, name: "Daughter's PC", type: "apple", price: "£350"),
    ]
    
    var body: some View {
        NavigationView {
            List(PCList) { pclist in
                NavigationLink(destination: GraphView()) {
                    HStack {
                        Image(pclist.type)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading, spacing: 5, content: {
                            Text(pclist.name)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Gaming PC, price of \(pclist.price)")
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
