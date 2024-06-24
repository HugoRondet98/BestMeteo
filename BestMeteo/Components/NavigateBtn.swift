//
//  NavigateBtn.swift
//  BestMeteo
//
//  Created by HugoRondet on 24/06/2024.
//

import SwiftUI

struct NavigateBtn: View {
    
    @State var changedAction: Bool
    var changedLabel: AnyView
    
    init(changedAction: Bool, changedLabel: AnyView) {
        self.changedAction = changedAction
        self.changedLabel = changedLabel
    }
    
    var body: some View {
        Button(
            action:
                {changedAction = true},
            label:
                {changedLabel}
        )
    }
}
