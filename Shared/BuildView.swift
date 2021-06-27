//
//  BuildView.swift
//  SystemBuilderCP
//
//  Created by Oliver Harrison on 19/06/2021.
//

import SwiftUI
import SwiftUICharts

struct BuildView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 8) {
                    GroupBox(
                        label: Label("Pricing", systemImage: "dollarsign.square.fill")
                            .foregroundColor(.green)
                    ) {
                        let price = Legend(color: .yellow, label: "Average")
                        let points: [DataPoint] = [
                            
                            .init(value: 130, label: "1", legend: price),
                            .init(value: 120, label: "2", legend: price),
                            .init(value: 100, label: "4", legend: price),
                            .init(value: 130, label: "5", legend: price),
                            .init(value: 138, label: "10", legend: price),
                            .init(value: 150, label: "11", legend: price),
                            .init(value: 150, label: "13", legend: price),
                            .init(value: 136, label: "14", legend: price),
                            .init(value: 130, label: "17", legend: price),
                            .init(value: 150, label: "18", legend: price),
                            .init(value: 150, label: "20", legend: price),
                            .init(value: 160, label: "21", legend: price),
                            .init(value: 158, label: "24", legend: price),
                        ]
                        BarChartView(dataPoints: points)
                    }
                    .padding()
                    .frame(minWidth: 320, maxHeight: 400)
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
