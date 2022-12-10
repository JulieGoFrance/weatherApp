//
//  ContentView.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager =  LocationManager()
    var weatherManager = WeatherManager()
    @State var weather : ResponseBody?
   
    var body: some View {
        VStack {
            if let location = locationManager.location {
             
                Text("Votre location est \(location.latitude) and \(location.longitude).")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                }else {
                    WelcomeView().environmentObject(locationManager)
                }
            }
           
        }.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .preferredColorScheme(.dark)
        .padding()
                     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
/*
 
 if let weather = weather {
     Text(" test weather Data fonctionn")
 } else {
     LoadingView().task {
         do {
             
         } catch {
             print("error getting weather \(error)")
         }
     }
 }
 */
 
