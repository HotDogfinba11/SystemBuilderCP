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
                    Label: do {
                        HStack {
                            Image("pc-graphic")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(20)
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text("Nephew's PC")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("Gaming PC, budget of [price].")
                                    .font(.caption)
                                    .foregroundColor(Color.secondary)
                                
                            })
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Favourited")
        }
    }
}

struct FavouritedView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritedView()
    }
}
