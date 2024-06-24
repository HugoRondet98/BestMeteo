//
//  Header.swift
//  BestMeteo
//
//  Created by HugoRondet on 19/06/2024.
//

import SwiftUI

struct HeaderView: View {
    
    let geometry: GeometryProxy, city: String, country: String
    
    init(geometry: GeometryProxy, city: String, country: String) {
        self.geometry = geometry
        self.city = city
        self.country = country.uppercased()
    }
    
    var body: some View {
        HStack {
            Button(action: {
                print("test 1")
            }, label: {
                Image(systemName: "menucard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
            .frame(width: geometry.size.width * 0.05, height: geometry.size.height * 0.05)
            .padding(.leading)
            Spacer()
            VStack {
                Text(firstLetterCapitalized(city))
                    .font(.system(size: 30, weight: .light))
                Text(country)
                    .font(.system(size: 15, weight: .thin))
            }
            Spacer()
            Button(action: {
                print("test 2")
            }, label: {
                Image(systemName: "plus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
            .frame(width: geometry.size.width * 0.05, height: geometry.size.height * 0.05)
            .padding(.trailing)
        }
        .frame(width: geometry.size.width, height: geometry.size.height * 0.1)
//        .border(Color.white, width: 0.5)
        .foregroundColor(.white)
    }
}

func firstLetterCapitalized(_ word: String) -> String {
    var tab: Array<Substring> = word.lowercased().split(separator: "")
    if !tab.isEmpty {
        tab[0] = Substring(tab[0].uppercased())
    }
    let newWord = tab.joined()
    return newWord
}


