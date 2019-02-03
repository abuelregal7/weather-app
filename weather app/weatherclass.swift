//
//  weatherclass.swift
//  weather app
//
//  Created by Ahmed abu elregal on 11/14/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import Foundation
class Weather {
    
    /*var icon2 : [UIImage] = [
        UIImage(named: "01d")!,
        UIImage(named: "01n")!,
        UIImage(named: "02d")!,
        UIImage(named: "02n")!,
        UIImage(named: "03d")!,
        UIImage(named: "03n")!,
        UIImage(named: "04d")!,
        UIImage(named: "04n")!,
        UIImage(named: "09d")!,
        UIImage(named: "09n")!,
        UIImage(named: "10d")!,
        UIImage(named: "10n")!,
        UIImage(named: "11d")!,
        UIImage(named: "11n")!,
        UIImage(named: "13d")!,
        UIImage(named: "13n")!,
        UIImage(named: "50d")!,
        UIImage(named: "50n")!
        ]*/
    
    var id : Int!
    var main : String!
    var description : String!
    var icon : String!
    var dt: Int!
    var temp : Double!
    var temp_min : Double!
    var temp_max : Double!
    var pressure : Double!
    var sea_level : Double!
    var grnd_level : Double!
    var humidity : Int!
    var temp_kf : Double!
    
    
    init(id : Int!, main : String!, description : String!, icon : String!, dt : Int!,temp : Double!,temp_min : Double!,temp_max : Double!,pressure : Double!,sea_level : Double!,grnd_level : Double!,humidity : Int!, temp_kf : Double!) {
        
        
        
        self.id = id
        self.main = main
        self.description = description
        self.icon = icon
        self.dt = dt
        self.temp = temp
        self.temp_min = temp_min
        self.temp_max = temp_max
        self.pressure = pressure
        self.sea_level = sea_level
        self.grnd_level = grnd_level
        self.humidity = humidity
        self.temp_kf = temp_kf
        
        
    }
    
}
