//
//  GhostsViewController.swift
//  Example
//
//  Created by Simon Strandgaard on 20-09-15.
//  Copyright © 2015 Simon Strandgaard. All rights reserved.
//

import UIKit
import SwiftyFORM

class GhostsViewController: FormViewController {

	override func populate(builder: FormBuilder) {
		builder.navigationTitle = "Ghosts"
		builder.toolbarMode = .None
		builder += SectionHeaderTitleFormItem().title("Scary")
		builder += scarySlider
		builder += SectionHeaderTitleFormItem().title("See through")
		builder += transparantSlider
		builder += SectionHeaderTitleFormItem().title("Human looking")
		builder += humanLookingSlider
		builder += SectionHeaderTitleFormItem().title("Making noises")
		builder += makingNoisesSlider
		builder += SectionHeaderTitleFormItem()
		builder += submitButton
	}

	lazy var scarySlider: SliderFormItem = {
		let instance = SliderFormItem()
		instance.minimumValue(0.0).maximumValue(100.0).value(50.0)
		return instance
		}()
	
	lazy var transparantSlider: SliderFormItem = {
		let instance = SliderFormItem()
		instance.minimumValue(0.0).maximumValue(100.0).value(50.0)
		return instance
		}()
	
	lazy var humanLookingSlider: SliderFormItem = {
		let instance = SliderFormItem()
		instance.minimumValue(0.0).maximumValue(100.0).value(50.0)
		return instance
		}()
	
	lazy var makingNoisesSlider: SliderFormItem = {
		let instance = SliderFormItem()
		instance.minimumValue(0.0).maximumValue(100.0).value(50.0)
		return instance
		}()
	
	lazy var submitButton: ButtonFormItem = {
		let instance = ButtonFormItem()
		instance.title("Submit")
		instance.action = { [weak self] in
			self?.submit()
		}
		return instance
		}()
	
	func submit() {
		var s = "scary: \(scarySlider.value)\n"
		s += "transparant: \(transparantSlider.value)\n"
		s += "human looking: \(humanLookingSlider.value)\n"
		s += "noisy: \(makingNoisesSlider.value)"
		form_simpleAlert("Ghost encounters", s)
	}
}