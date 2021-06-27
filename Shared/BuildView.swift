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
        NavigationView {
                ScrollView{
                    VStack(spacing: 8) {
                        GraphView()
                    }
                }
            .navigationTitle("Build")
        }
        .navigationTitle("Build")
    }
}
    

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}

struct GraphView: View {
    var body: some View {
        GroupBox(
            label: Label("Average price over time", systemImage: "sterlingsign.square.fill")
                .foregroundColor(.green)
        ) {
            LightChartView(data: [2, 30, 9, 23, 10, 20, 15, 17, 6, 23],
                           type: .curved,
                           visualType: .filled(color: .yellow, lineWidth: 5))
        }
        .padding()
        .frame(minWidth: 320, minHeight: 200, maxHeight: 200)
    }
}
