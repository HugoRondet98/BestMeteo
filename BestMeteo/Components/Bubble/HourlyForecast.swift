//
//  HourlyForecast.swift
//  BestMeteo
//
//  Created by HugoRondet on 20/06/2024.
//

import SwiftUI

struct HourlyForecastView: View {
    
    let geometry: GeometryProxy
    
    init(geometry: GeometryProxy) {
        self.geometry = geometry
    }
    
    var body: some View {
        VStack (alignment: .leading){
            Text("HOURLY FORECAST")
                .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 0))
                .font(.system(size: 15, weight: .thin))
            ScrollView (.horizontal, showsIndicators: false){
                HStack {
                    ForEach (1..<24) { index in
                        VStack {
                            Text("6 AM")
                                .font(.system(size: 13, weight: .light))
                            Spacer()
                            Image(systemName: "snowflake")
                                .font(.system(size: 20, weight: .semibold))
                            Spacer()
                            Text("6°")
                                .font(.system(size: 13, weight: .semibold))
                        }
                        .padding(.trailing, 22)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 25, bottom: 20, trailing: 0))
            }
        }
        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.20)
        .background(Color.bubble)
        .cornerRadius(10)
        .foregroundColor(.white)
        .padding(.bottom, 10)
    }
}
