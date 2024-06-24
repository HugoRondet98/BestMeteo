//
//  WindSpeed.swift
//  BestMeteo
//
//  Created by HugoRondet on 21/06/2024.
//

import SwiftUI

struct WindSpeed: View {
    
    let wind: String
    
    init(wind: String) {
        self.wind = wind
    }
    
    var body: some View {
        HStack {
            Image(systemName: "wind")
            Text(wind)
        }
        .frame(maxWidth: 70, maxHeight: 30)
        .background(Color.black.opacity(0.4))
        .cornerRadius(20)
    }
}
