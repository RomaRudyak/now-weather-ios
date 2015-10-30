//
//  ViewController.swift
//  Now-weather
//
//  Created by Admin on 10/28/15.
//  Copyright © 2015 Roman Rudyak. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

	@IBOutlet weak var dayLbl:UILabel!
	@IBOutlet weak var tempLbl:UILabel!
	@IBOutlet weak var weatherImageView:UIImageView!
	@IBOutlet weak var pressureLbl: UILabel!
	
	
	var manager: CLLocationManager!
	var lastCoordinat:CLLocation!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		manager  = CLLocationManager()
		manager.delegate = self
		manager.desiredAccuracy = kCLLocationAccuracyBest
		manager.requestAlwaysAuthorization()
		manager.startUpdatingLocation()
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		let dateFormatter = NSDateFormatter()
		dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
		dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
		
		dayLbl.text = dateFormatter.stringFromDate(NSDate())
	}
	
	func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		
		if locations.count == 0 {
			return
		}
		
		lastCoordinat = locations[0]
		
	}
	
	@IBAction func onRefreshTapped(sender:AnyObject){
		
	}

}

