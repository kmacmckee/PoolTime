//
//  BookingReview.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct BookingReview: Codable {
    
    var reviewId: String
    var guestRating: Double //0.0 - 5.0
    var poolRating: Double
    var hostRating: Double
    
    var commentsAboutGuest: String
    var commentsAboutHost: String
    var commentsAboutPool: String
    
    var experienceRating: Double
    
    var poolStatus: String //TODO: PoolStatus (excellent, great, good, average, poor, veryPoor)
    
}
