//
//  Humidity.swift
//  BestMeteo
//
//  Created by HugoRondet on 21/06/2024.
//

import SwiftUI

struct Humidity: View {
    
    let humidity: String
    
    init(humidity: String) {
        self.humidity = humidity
    }
    
    var body: some View {
        HStack {
            Image(systemName: "cloud.rain")
            Text(humidity)
        }
        .frame(maxWidth: 70, maxHeight: 30)
        .background(Color.black.opacity(0.4))
        .cornerRadius(20)
    }
}
