//
//  User.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var userId: String
    var name: String
    //var username: String?
    var email: String
    var password: String
    var phoneNumber: String
    
    //var address: Address? //GPS location

    // TODO: Add user Image/Image data
    
    var hostRating: Double?
    var guestRating: Double?
    
    
    //var poolsHosting: [Pool]?
    //var favoritePools: [Pool]?

    //var requestedBookings: [Booking]?
    
    //var hostReviewHistory: [BookingReview]?
    //var guestReviewHistory: [BookingReview]?
    
    //var pastHostBookings: [Booking]?
    //var pastGuestBookings: [Booking]?
    
    
//    init(userId: String = UUID().uuidString, name: String, email: String, password: String, phoneNumber: String, address: Address?, hostRating: Double?, guestRating: Double?, favoritePools: [Pool]?, requestedBookings: [Booking]?, poolsHosting: [Pool]?, hostReviewHistory: [BookingReview]?, guestReviewHistory: [BookingReview]?, pastHostBookings: [Booking]?, pastGuestBookings: [Booking]?) {
//
//        self.userId = userId
//        self.name = name
//        //self.username = username
//        self.email = email
//        self.password = password
//        self.phoneNumber = phoneNumber
//        self.address = address
//        self.hostRating = hostRating
//        self.guestRating = guestRating
//        self.favoritePools = favoritePools
//        self.requestedBookings = requestedBookings
//        self.poolsHosting = poolsHosting
//        self.hostReviewHistory = hostReviewHistory
//        self.guestReviewHistory = guestReviewHistory
//        self.pastHostBookings = pastHostBookings
//        self.pastGuestBookings = pastGuestBookings
//    }
    
    
    //TODO: Payment Info
}
