//
//  WeatherService.swift
//  Now-weather
//
//  Created by Admin on 10/30/15.
//  Copyright © 2015 Roman Rudyak. All rights reserved.
//

import Foundation
import Alamofire

typealias WeatherFeatchComplited = (Weather?, Int) -> ()

class WeatherService {
	
	static let Failed = 500
	static let Success = 200
	static let NotFound = 404
	
	static func GetCurrentWeatherFor(lat:Double, lng:Double, complite:WeatherFeatchComplited) {
		print("\(BASE_URL)&lat=\(lat)&lng=\(lng)")
		Alamofire.request(.GET, "\(BASE_URL)&lat=\(lat)&lng=\(lng)").responseJSON { (response:Response<AnyObject, NSError>) -> Void in
			if response.result.isFailure {
				complite(nil, Failed)
				return
			}
			
			print(response.result.value)
			complite(nil, 0)
			return
			
			if let dataDic = response.result.value as? Dictionary<String, AnyObject> where dataDic.count > 0{
				
				
				let weather = Weather();
				
				
				complite(weather,  Success)
			}
			
			else {
				complite(nil, NotFound)
			}

		}
		
	}
	
	private static let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?units=metric&appid=ff5abe79d08687c67d6167dbe18fb141"
	
}