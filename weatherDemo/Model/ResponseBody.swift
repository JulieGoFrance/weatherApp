//
//  ResponseBody.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import Foundation
import CoreLocation
import CoreLocationUI

struct ResponseBody  : Decodable {
    var name : String
    var weather : [Weather]
    var coord : Coord
    var wind : Wind
    var main : MainResponse
   
    struct MainResponse : Decodable {
        var temp : Double
        var feels_like : Double
        var temp_min : Double
        var temp_max : Double
        var pressure : Double
        var humidity : Double
    }
    
  
}

extension ResponseBody.MainResponse {
    var feelslike : Double {
        return feels_like
    }
    var tempmin : Double {
        return temp_min
    }
}



