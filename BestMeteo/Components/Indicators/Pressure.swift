//
//  IndiceUV.swift
//  BestMeteo
//
//  Created by HugoRondet on 21/06/2024.
//

import SwiftUI

struct IndiceUV: View {
    
    let pressure: String
    
    var body: some View {
        HStack {
            Image(systemName: "sun.max.trianglebadge.exclamationmark.fill")
            Text(pressure)
        }
        .frame(maxWidth: 70, maxHeight: 30)
        .background(Color.black.opacity(0.4))
        .cornerRadius(20)
    }
}
