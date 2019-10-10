//
//  Fruit.swift
//  G74L4
//
//  Created by Ivan Vasilevich on 10/3/19.
//  Copyright © 2019 RockSoft. All rights reserved.
//

import UIKit

class CoffeeDrink: NSObject {
	

	let name: String
    var neededWater: Int
    var neededMilk: Int
    var neededBeans: Int
	
    init(name: String, neededWater: Int, neededMilk: Int, neededBeans: Int) {
		self.name =	name
		self.neededWater = neededWater
        self.neededMilk = neededMilk
        self.neededBeans = neededBeans
	}
	 
//	func someDescriptione() -> String {
//		var result = String()// ""
//		result += self.name
//		return result
//	}
}
//
//class SuperDrink: CoffeeDrink {
//
//	var color: String
//
//	init(name: String, neededWater: Bool = false, c: String) {
//		self.color = c
//		super.init(name: name, neededWater: neededWater)
//	}
	
//}
