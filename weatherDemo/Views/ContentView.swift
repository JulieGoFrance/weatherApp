//
//  ContentView.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager =  LocationManager()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! :) ")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
