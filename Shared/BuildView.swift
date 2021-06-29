//
//  BuildView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI
import LightChart

struct BuildView: View {
    var body: some View {
        NavigationView{
            GraphView()
        }
    }
}

struct GraphView: View {
    @State private var showingSheet = false
        var body: some View {
            ScrollView{
                GroupBox(
                    label: Label("Average price over time", systemImage: "sterlingsign.square.fill")
                        .foregroundColor(.green)
                ){
                    LightChartView(data: [2, 30, 9, 23, 10, 20, 15, 17, 6, 23],
                                   type: .curved,
                                   visualType: .filled(color: .yellow, lineWidth: 5))
                }
                .padding()
                .frame(minWidth: 320, minHeight: 200, maxHeight: 200)
                .navigationTitle("Build")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button(action: {
                            showingSheet.toggle()
                        }) {
                          Image(systemName: "gear")
                        }
                        .sheet(isPresented: $showingSheet) {
                            SettingsView()
                        }
                    }
                }
            }
            .navigationTitle("Build")
        }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}
