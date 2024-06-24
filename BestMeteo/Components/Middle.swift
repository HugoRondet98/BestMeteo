//
//  Temperature.swift
//  BestMeteo
//
//  Created by HugoRondet on 19/06/2024.
//

import SwiftUI

struct MiddleView: View {
    
    let geometry: GeometryProxy, temp: String, weather: String, tempMax: String, tempMin: String, humidity: String, uv: String, wind: String
    
    @State var navigateToHumidity: Bool = false
    @State var navigateToIndiceUv: Bool = false
    @State var navigateToWindSpeed: Bool = false
    
    init(geometry: GeometryProxy, temp: String, weather: String, tempMax: String, tempMin: String, humidity: String, uv: String, wind: String) {
        self.geometry = geometry
        self.temp = temp
        self.weather = weather
        self.tempMax = tempMax
        self.tempMin = tempMin
        self.humidity = humidity
        self.uv = uv
        self.wind = wind
    }
    
    var body: some View {
        HStack {
            TemperatureView(geometry: geometry, temp: temp, weather: weather, tempMax: tempMax, tempMin: tempMin)
            Spacer()
            VStack {
                Button(
                    action:
                        {navigateToHumidity = true},
                    label:
                        {Humidity(humidity: humidity)}
                )
                Button(
                    action:
                        {navigateToIndiceUv = true},
                    label:
                        {IndiceUV(uv: uv)}
                )
                Button(
                    action:
                        {navigateToWindSpeed = true},
                    label:
                        {WindSpeed(wind: wind)}
                )
            }
            .padding(.trailing, 10)
            .font(.system(size: 12, weight: .light))
            //NAVIGATION
            .navigationDestination(isPresented: $navigateToHumidity, destination: {HumidityView()})
            .navigationDestination(isPresented: $navigateToIndiceUv, destination: {IndiceUvView()})
            .navigationDestination(isPresented: $navigateToWindSpeed, destination: {WindSpeedView()})
        }
        .foregroundColor(.white)
    }
}
