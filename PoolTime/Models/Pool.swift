//
//  Pool.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct Pool: Codable {
    
    var poolId: String
    var address: Address
    var description: String
    var depth: String
    var size: String //length
    var rating: Double? //0.0 - 5.0
    var maxAllowedPeople: Int
    var allowsPets: Bool
    var allowsKids: Bool //kids under 18?   //variable age range?
    //TODO: Add Pool images/image data
    
    var cost: Double    //allow cost increase? Host determined cost?
    var ownerId: String  //owner/host //uuid?
    
    var bathroomAvailable: Bool
    
    var amentities: [Amentity]?  //hottub, diving board, heated water, pool chairs
    var poolItemsIncluded: [PoolItem]? //towels, floaties, pool toys
    
    
    var timesAvailable: [TimeSlot]? //booking time slots, cost hourly?
    
    
    var pastRentals: [Booking]?
    
    
    init(poolId: String, address: Address, description: String, depth: String, size: String, rating: Double?, maxAllowedPeople: Int, allowsPets: Bool, allowsKids: Bool, cost: Double, amentities: [Amentity]?, poolItemsIncluded: [PoolItem]?, bathroomAvailable: Bool, timesAvailable: [TimeSlot]?, ownerId: String, pastRentals: [Booking]?) {
        
        self.poolId = poolId
        self.address = address
        self.description = description
        self.depth = depth
        self.size = size
        self.rating = rating
        self.maxAllowedPeople = maxAllowedPeople
        self.allowsPets = allowsPets
        self.allowsKids = allowsKids
        self.cost = cost
        self.amentities = amentities
        self.poolItemsIncluded = poolItemsIncluded
        self.bathroomAvailable = bathroomAvailable
        self.timesAvailable = timesAvailable
        self.ownerId = ownerId
        self.pastRentals = pastRentals
    }
}
