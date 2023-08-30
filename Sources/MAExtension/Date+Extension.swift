//
//  Date+Extension.swift
//  iOSExpert
//
//  Created by Muhammad Alfaraby on 21/08/23.
//

import Foundation

public extension Date {
    static func dateRangeStringForCurrentYear() -> String {
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: Date())

        // Create a start date for January 1st of the current year
        let startDateComponents = DateComponents(year: currentYear, month: 1, day: 1)
        let startDate = calendar.date(from: startDateComponents)!

        // Create an end date for December 31st of the current year
        let endDateComponents = DateComponents(year: currentYear, month: 12, day: 31)
        let endDate = calendar.date(from: endDateComponents)!

        // Create a date formatter and format the dates as "yyyy-MM-dd"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let startDateString = dateFormatter.string(from: startDate)
        let endDateString = dateFormatter.string(from: endDate)

        // Combine the start and end date strings with a comma
        return "\(startDateString),\(endDateString)"
    }
}
