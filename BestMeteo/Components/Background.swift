//
//  Background.swift
//  BestMeteo
//
//  Created by HugoRondet on 19/06/2024.
//

import SwiftUI

struct BackgroundView: View {
    
    let geometry: GeometryProxy, img: String
    
    init(geometry: GeometryProxy, img: String) {
        self.geometry = geometry
        self.img = img
    }
    
    var body: some View {
        ZStack {
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
//                .frame(width: geometry.size.width, height: geometry.size.height)
            Color.black.opacity(0.3)
        }
        .ignoresSafeArea()
    }
}

