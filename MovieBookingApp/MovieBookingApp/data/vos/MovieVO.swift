//
//  MovieVO.swift
//  MovieBookingApp
//
//  Created by Ryan Willson on 6/9/21.
//

import Foundation

struct MovieSeatVo{
    var title : String
    var type : String
    
    func isMovieSeatAvailable() -> Bool{
        return type == SEAT_TYPE_AVAILABLE
    }
    
    func isMovieSeatTaken() -> Bool{
        return type == SEAT_TYPE_TAKEN
    }
    
    func isMovieSeatRowTitle() -> Bool{
        return type == SEAT_TYPE_TEXT
    }
    func isPrimary() -> Bool{
        return type == Seat_Primary
    }
    
}
