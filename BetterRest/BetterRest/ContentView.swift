//
//  ContentView.swift
//  BetterRest
//
//  Created by kirabin on 2.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepHours = 8.0
    @State private var wakeUp = Date()
    
    var sleepFormated: LocalizedStringKey {
        let sleepMinutes = Int(sleepHours.truncatingRemainder(dividingBy: 1)  * 60)
        
        return "Sleep: \(sleepHours.rounded(.down), specifier: "%.0f")h \(sleepMinutes != 0 ? String(sleepMinutes) + "m" : "")"
    }
    
    var body: some View {
        NavigationView {
            Form {
                Stepper(value: $sleepHours, in: 4...12, step: 0.25) {
                    Text(sleepFormated)
                }
                .padding()
                
                DatePicker("Wake up : ", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .padding()
                    .labelsHidden()
                
                
            }
            .navigationTitle("Better Rest")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
