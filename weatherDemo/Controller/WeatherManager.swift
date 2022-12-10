//
//  WeatherManager.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import Foundation
import CoreLocation

class WeatherManager  {
    func getCurrentWeather (lattitude : CLLocationDegrees, longitude : CLLocationDegrees) async throws  -> ResponseBody {
        
        guard let url = URL(string: "api.openweathermap.org/data/3.0/onecall?lat=\(lattitude)&lon=\(longitude).04&appid=\("a5bc23a9aad32741a4d4531569e2a3cc")&units=metrics") else {
            fatalError("missing Url")
        }
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            fatalError("error fetching weather data")
        }
        let decodedDate =  try JSONDecoder().decode(ResponseBody.self, from: data)
         
     return decodedDate
    }
}




 
