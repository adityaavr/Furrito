//
//  ContentView.swift
//  Furrito
//
//  Created by Aditya 😤 on 27/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                Rectangle()
                    .fill(Gradient(colors: [.purple, .p]))
                    .ignoresSafeArea()
                Text("furrito").font(.system(size: 100))
                    .foregroundColor(.white)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
