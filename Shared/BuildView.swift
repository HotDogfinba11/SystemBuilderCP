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
        LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title", legend: "Legendary") // legend is optional

            .navigationTitle("Build")
            .frame(minWidth: 320)
    }
}

struct BuildView_Previews: PreviewProvider {
    static var previews: some View {
        BuildView()
    }
}
