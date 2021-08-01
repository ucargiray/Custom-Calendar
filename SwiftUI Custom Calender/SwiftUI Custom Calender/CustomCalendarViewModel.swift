//
//  CustomCalendarViewModel.swift
//  SwiftUI Custom Calender
//
//  Created by Giray UÇAR on 31.07.2021.
//

import Foundation

class CustomCalendarViewModel : ObservableObject {
    
    @Published var currentMonth = 0
    @Published var currentMonthName = ""
    
    func findWeekdayName(date : Date) -> Int {
        switch date.firstDayOfTheMonth.weekday {
        case 1:
            return 7
        case 2:
            return 1
        case 3:
            return 2
        case 4 :
            return 3
        case 5:
            return 4
        case 6 :
            return 5
        case 7 :
            return 6
        default:
            return 1
        }
    }
    
    func findHighlightedDay(day : Int) -> Int {
        switch day {
        case 7:
            return 6
        case 2:
            return 1
        case 3:
            return 2
        case 4 :
            return 3
        case 5:
            return 4
        case 6 :
            return 6
        case 1 :
            return 7
        default:
            return 1
        }
    }
    
    func findMonthName() {
        var absNumber = abs(self.currentMonth)
        if currentMonth == 0 {
            currentMonth = 12
            absNumber = 12
        }
        switch absNumber {
        case 1:
            currentMonthName = "January"
        case 2:
            currentMonthName = "February"
        case 3:
            currentMonthName = "March"
        case 4:
            currentMonthName = "April"
        case 5:
            currentMonthName = "May"
        case 6:
            currentMonthName = "June"
        case 7:
            currentMonthName = "July"
        case 8:
            currentMonthName = "August"
        case 9:
            currentMonthName = "September"
        case 10:
            currentMonthName = "October"
        case 11:
            currentMonthName = "November"
        case 12:
            currentMonthName = "December"
        default:
            currentMonthName = ""
        }
    }
}
