//
//  ContentView.swift
//  ConvertTheBritish
//
//  Created by Sonja Meyer on 2021/04/13.
//

import SwiftUI
import sharedKMM

struct ContentView: View {
    @State var ouncesForGrams: Double = 0.0
    @State var ouncesForMl: Double = 0.0
    @State var poundsForGrams: Double = 0.0
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Convert the British").bold()
        }
        
        VStack(alignment: .leading) {
            Text("Ounces to grams").bold()
        TextField("Ounces: ", text: Binding(
            get: { String(ouncesForGrams) },
            set: { ouncesForGrams = Double($0) ?? 0.0 }
        )).keyboardType(.numberPad)
        Text("Answer: \(Convert().ounceToGram(ounces: ouncesForGrams))")
        }.padding()
        
        VStack(alignment: .leading) {
        Text("Ounces to ml").bold()
        TextField("Ounces: ", text: Binding(
            get: { String(ouncesForMl) },
            set: { ouncesForMl = Double($0) ?? 0.0 }
        )).keyboardType(.numberPad)
        Text("Answer: \(Convert().ounceToMl(ounces: ouncesForMl))")
        }.padding()
        
        VStack(alignment: .leading) {
        Text("Pounds to grams").bold()
        TextField("Pounds: ", text: Binding(
            get: { String(poundsForGrams) },
            set: { poundsForGrams = Double($0) ?? 0.0 }
        )).keyboardType(.numberPad)
        Text("Answer: \(Convert().poundToGram(pounds: poundsForGrams))")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
