//
//  WeatherResponse.swift
//  BestMeteo
//
//  Created by HugoRondet on 26/06/2024.
//

import Foundation

struct WeatherResponse: Codable {
    struct Coord: Codable {
        var lon: Double = 0.0
        var lat: Double = 0.0
    }
    
    struct Weather: Codable {
        var id: Int = 0
        var main: String = ""
        var description: String = ""
        var icon: String = ""
    }
    
    struct Main: Codable {
        var temp: Double = 0.0
        var feels_like: Double = 0.0
        var temp_min: Double = 0.0
        var temp_max: Double = 0.0
        var pressure: Int = 0
        var humidity: Int = 0
    }
    
    struct Wind: Codable {
        var speed: Double = 0.0
        var deg: Int = 0
    }
    
    struct Clouds: Codable {
        var all: Int = 0
    }
    
    struct Sys: Codable {
        var type: Int = 0
        var id: Int = 0
        var country: String = ""
        var sunrise: Int = 0
        var sunset: Int = 0
    }
    
    var coord: Coord = Coord(lon: 0.0, lat: 0.0)
    var weather: [Weather] = []
    var base: String = ""
    var main: Main = Main()
    var visibility: Int = 0
    var wind: Wind = Wind()
    var clouds: Clouds = Clouds()
    var dt: Int = 0
    var sys: Sys = Sys()
    var timezone: Int = 0
    var id: Int = 0
    var name: String = ""
    var cod: Int = 0
}
