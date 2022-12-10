//
//  WeatherResponse.swift
//  weatherDemo
//
//  Created by User on 10/12/2022.
//

import Foundation
import CoreLocation
import CoreLocationUI


struct Weather : Decodable{
var id : Double
var main : String
var description : String
var icon : String
}
