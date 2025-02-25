//
//  ContentView.swift
//  MyImages
//
//  Created by John Howard on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Welcome to the Zoo"
    @State private var showImage0 = "image0"
    @State private var showImage1 = "image1"
    @State private var showImage: String = " "
    var body: some View {
        VStack {
            Spacer()
            Image(showImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Toggle Image") {
                showImage = (showImage==showImage0 ? showImage1 : showImage0)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
