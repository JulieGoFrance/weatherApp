//
//  WelcomeView.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import SwiftUI
import CoreLocation
import CoreLocationUI
struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack {
            
            VStack(spacing : 20){
                Text("Welcome to the weather App").bold().font(.title)
                Text(" donnez votre localisation pour avoir la météo dans votre zone").padding()
            }.multilineTextAlignment(.center).padding()
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }.foregroundColor(.white)
            
        }.frame(maxWidth : .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
