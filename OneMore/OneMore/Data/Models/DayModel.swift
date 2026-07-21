//
//  DayModel.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import Foundation

struct DayModel: Identifiable {
    let id = UUID()
    let date: Date
    
    var dayName: String {
        date.formatted(.dateTime.weekday(.abbreviated))
    }
    
    var dayNumber: String {
        date.formatted(.dateTime.day(.twoDigits))
    }
}
