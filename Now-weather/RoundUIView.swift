//
//  RoundUIView.swift
//  Now-weather
//
//  Created by Admin on 10/28/15.
//  Copyright © 2015 Roman Rudyak. All rights reserved.
//

import UIKit
import Foundation

class RoundUIView: UIView {

	override func awakeFromNib() {
		clipsToBounds = true
		applayRadius()
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		applayRadius()
		super.layoutSubviews()
	}
	
	private func applayRadius(){
		let w = frame.size.width
		let h = frame.size.height
		
		let radius = max(w / 2, h / 2)
		
		layer.cornerRadius = radius
	}
	
}
