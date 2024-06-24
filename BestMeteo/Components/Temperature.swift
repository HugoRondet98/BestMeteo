//
//  Temperature.swift
//  BestMeteo
//
//  Created by HugoRondet on 19/06/2024.
//

import SwiftUI

struct TemperatureView: View {
    
    let geometry: GeometryProxy, temp: String, weather: String, tempMax: String, tempMin: String
    
    init(geometry: GeometryProxy, temp: String, weather: String, tempMax: String, tempMin: String) {
        self.geometry = geometry
        self.temp = temp
        self.weather = weather
        self.tempMax = tempMax
        self.tempMin = tempMin
    }
    
    var body: some View {
        VStack (alignment: .leading){
            Text(temp)
                .font(.system(size: 110, weight: .light))
                .padding(.bottom, -20)
            Text(weather)
                .font(.system(size: 30, weight: .light))
            HStack {
                HStack {
                    Image(systemName: "thermometer.low")
                    Text(tempMin)
                }
                HStack {
                    Image(systemName: "thermometer.high")
                    Text(tempMax)
                }
            }
            .padding(.top, -15)
            .font(.system(size: 17, weight: .thin))
        }
        .padding(.leading, 40)
    }
    
}
