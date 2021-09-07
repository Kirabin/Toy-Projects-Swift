//
//  ContentView.swift
//  Notes
//
//  Created by kirabin on 3.9.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NoteEditor()
            }
            .navigationBarTitle(Text("Notes"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
