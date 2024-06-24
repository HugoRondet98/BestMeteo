//
//  Footer.swift
//  BestMeteo
//
//  Created by HugoRondet on 20/06/2024.
//

import SwiftUI

struct FooterView: View {
    
    let geometry: GeometryProxy

    init(geometry: GeometryProxy) {
        self.geometry = geometry
    }
    
    var body: some View {
        Text("\u{00A9} Hugo Rondet")
            .padding(.top, 20)
            .font(.system(size: 15, weight: .ultraLight))
            .foregroundColor(.white)
    }
}
