//
//  ContentView.swift
//  BestMeteo
//
//  Created by HugoRondet on 14/06/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var navigateToNewPage = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                //BACKGROUND
                BackgroundView(geometry: geometry, img: "Neige")

                VStack {
                    //HEADER
                    HeaderView(geometry: geometry, city: "berlin", country: "allemagne")
                    
                    //CONTAINER
                    ScrollView {
                        VStack {
                            //MIDDLE
                            MiddleView(geometry: geometry, temp: "6°", weather: "Raining", tempMax: "5°C", tempMin: "-14°C", humidity: "90%", uv: "1UV", wind: "15 m/s")
                            
                            //BUBBLE
                            BubbleView(geometry: geometry)
                            
                            //FOOTER
                            FooterView(geometry: geometry)
                        }
                        .padding(.top, geometry.size.height * 0.30)
                    }
                }
                //NAVIGATION
//                Button(action: {
//                    navigateToNewPage = true
//                }, label: {
//                    IndiceUV(uv: "10UV")
//                })
//                .navigationDestination(isPresented: $navigateToNewPage, destination: {IndiceUvView()})
            }
        }
    }
}

#Preview {
    HomeView()
}
