//
//  PoolItem.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct PoolItem: Codable {
    var towels: Bool
    var floaties: Bool
    var poolToys: Bool
    var other: String
}
