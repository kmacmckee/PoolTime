//
//  Booking.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct Booking: Codable {
    
    var bookingId: String
    
    var bookingStatus: String   //TODO: Booking Status (approved, pending, declined)
    var paymentStatus: String   //TODO: Payment Status (approved, pending, declined)
    
    var hostId: String
    var poolId: String
    var guestId: String
    
    var cost: Double
    var timeSlotId: String
    
    var reviewId: String
        
}
