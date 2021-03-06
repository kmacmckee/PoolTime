//
//  TimeSlot.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct TimeSlot: Codable {
    
    var timeSlotId: String
    
    var startTime: Date //by hour
    var endTime: Date
    
    var duration: DateInterval
}
