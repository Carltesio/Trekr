//
//  ContentView.swift
//  Trekr
//
//  Created by Carlos Delgado on 2021-05-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
       Image("highlands")
        .resizable()
        .scaledToFit()
        
        Text("The highlands")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// Minute 41
