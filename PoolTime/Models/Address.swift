//
//  Address.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct Address: Codable {
    var streetAddress: String
    var city: String
    var state: String
    var zipCode: Int
    var longitude: Double
    var latitude: Double
    
}
