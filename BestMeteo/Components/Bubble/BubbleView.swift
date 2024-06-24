//
//  Footer.swift
//  BestMeteo
//
//  Created by HugoRondet on 20/06/2024.
//

import SwiftUI

struct BubbleView: View {
    
    let geometry: GeometryProxy

    init(geometry: GeometryProxy) {
        self.geometry = geometry
    }
    
    var body: some View {
        VStack {
            HourlyForecastView(geometry: geometry)
            
            ForEach (0..<4) { index in
                HourlyForecastView(geometry: geometry)
            }
        }
        .padding(.top, 40)
    }
}
