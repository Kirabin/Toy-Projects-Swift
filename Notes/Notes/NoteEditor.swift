//
//  NoteEditor.swift
//  Notes
//
//  Created by kirabin on 3.9.2021.
//

import SwiftUI

struct NoteEditor: View {
    
    
    var body: some View {
        
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5)
    }
}

struct NoteEditor_Previews: PreviewProvider {
    static var previews: some View {
        NoteEditor()
    }
}
