//
//  Calendar+Extension.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import Foundation

extension Calendar {

    func currentWeek() -> [DayModel] {
        let today = Date()

        guard let weekInterval = dateInterval(of: .weekOfYear, for: today) else {
            return []
        }

        return (0..<7).compactMap { offset in
            guard let date = self.date(byAdding: .day,
                                       value: offset,
                                       to: weekInterval.start) else {
                return nil
            }

            return DayModel(date: date)
        }
    }
}
