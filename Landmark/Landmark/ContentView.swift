//
//  ContentView.swift
//  Landmark
//
//  Created by kirabin on 23.9.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafesArea(.top)
                .frame(height:300)
            
            CircleImage()
                .offset(y: -150)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua National Tree Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                }
                .foregroundColor(Color.gray)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
