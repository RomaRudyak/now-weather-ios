//
//  WeatherService.swift
//  Now-weather
//
//  Created by Admin on 10/30/15.
//  Copyright © 2015 Roman Rudyak. All rights reserved.
//

import Foundation

class WeatherService {
	
	
	static func GetCurrentWeatherFor(lat:Double, lng:Double) -> Weather {
		let weather = Weather();
		
		return weather;
	}
	
	let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?units=metric"
	
}