//
//  Date+Weekday.swift
//  SwiftUI Custom Calender
//
//  Created by Giray UÇAR on 31.07.2021.
//

import Foundation

extension Date {
    var weekday: Int { Calendar.current.component(.weekday, from: self) }
    var firstDayOfTheMonth: Date {
        Calendar.current.dateComponents([.calendar, .year,.month], from: self).date!
    }
}

extension String {
    static var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    var date: Date? {
       String.dateFormatter.date(from: self)
    }
}
