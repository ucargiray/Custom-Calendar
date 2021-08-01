//
//  ContentView.swift
//  SwiftUI Custom Calender
//
//  Created by Giray UÇAR on 31.07.2021.
//

import SwiftUI

struct CustomCalenderView: View {
    
    @StateObject var customCalenderVM = CustomCalendarViewModel()
    
    @State var dayInMonth = 30
    @State var differenceTime = 0
    @State var currentDayInt = 0
    @State var differenceFromCurrentMonth = 0
    @State var startingDay = 0
    @State var userCurrentTimeMonthInt = 0
    @State var userCurrentTimeDayInt = 0
    @State var changedMonth = 0
    @State var selectedDay = 0
    @State var highlightedDay = 0
    
    // YOU CAN ARRANGE THE LIMIT FOR USER CAN SWITCH BETWEEN MONTHS
    @State var monthDifferenceLimit = 2
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            HStack(spacing:20) {
                HStack {
                    Image("leftArrow")
                        .renderingMode(.template)
                        .onTapGesture {
                            selectedDay = 0
                            // YOU CAN CHANGE THE RANGE THAT USER CAN SWITCH BETWEEN MONTHS
                            if changedMonth < monthDifferenceLimit {
                                customCalenderVM.currentMonth -= 1
                                differenceFromCurrentMonth -= 1
                                changedMonth += 1
                            }
                        }.foregroundColor(changedMonth < 2 ? Color.black : Color.gray.opacity(0.3))
                    
                    Text("\(customCalenderVM.currentMonthName)")
                        .bold()
                        .frame(alignment : .center)
                        .frame(width : 150)
                    
                    Image("rightArrow")
                        .renderingMode(.template)
                        .onTapGesture {
                            selectedDay = 0
                            // YOU CAN CHANGE THE RANGE THAT USER CAN SWITCH BETWEEN MONTHS
                            if changedMonth > -(monthDifferenceLimit) {
                                customCalenderVM.currentMonth += 1
                                differenceFromCurrentMonth += 1
                                changedMonth -= 1
                            }
                        }.foregroundColor(changedMonth > -2 ? Color.black : Color.gray.opacity(0.3))
                }.foregroundColor(Color.gray)
                
            }.frame(width : UIScreen.main.bounds.width - 40)
            .padding(.top,20)
            .onChange(of: customCalenderVM.currentMonth, perform: { value in
                customCalenderVM.currentMonth = value % 12
                customCalenderVM.findMonthName()
                findDaysInMonth()
            })
            
            CustomCalendarDayView(highligtedDay : $highlightedDay)
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(1...(dayInMonth+startingDay-1), id: \.self) { item in
                    if item < startingDay {
                        Text("")
                    }
                    else {
                        // THIS CONDITIONS CHECKS IF THE DAY IS WEEKEND if so DRAW A LINE TO IT
                        if item % 7 == 0 || item % 7 == 6 {
                            if item - startingDay + 1 == (userCurrentTimeDayInt) && userCurrentTimeMonthInt == customCalenderVM.currentMonth {
                                Text("\(item - startingDay + 1)")
                                    .background(selectedDay == (item - startingDay + 1) ? Circle().fill(Color.purple).frame(width: 40, height: 40) : Circle().fill(Color.gray).frame(width: 40, height: 40))
                                    .onTapGesture {
                                        selectedDay = item - startingDay + 1
                                    }
                            }else {
                                ZStack {
                                    Text("\(item - startingDay + 1)")
                                        .foregroundColor(.gray)
                                    Divider()
                                }
                            }
                        }
                        else {
                            if item - startingDay + 1 == (userCurrentTimeDayInt) && userCurrentTimeMonthInt == customCalenderVM.currentMonth {
                                Text("\(item - startingDay + 1)")
                                    .background(selectedDay == (item - startingDay + 1) ? Circle().fill(Color.purple).frame(width: 40, height: 40) : Circle().fill(Color.gray).frame(width: 40, height: 40))
                                    .onTapGesture {
                                        selectedDay = item - startingDay + 1
                                    }
                            }
                            else {
                                Text("\(item - startingDay + 1)")
                                    .background(selectedDay == (item - startingDay + 1) ? Circle().fill(Color.purple).frame(width: 40, height: 40) : Circle().fill(Color.clear).frame(width:40,height:40))
                                    .onTapGesture {
                                        selectedDay = item - startingDay + 1
                                    }
                            }
                        }
                        
                    }
                    
                }.padding(.top,8)
                
            }
            .padding([.leading,.trailing,.bottom,.top])
            .background(Color.white)
            .cornerRadius(20)
            .padding([.bottom],30)
            
        }.onAppear {
            if let monthInt = Calendar.current.dateComponents([.month], from: Date()).month {
                differenceTime = monthInt
                customCalenderVM.currentMonth = monthInt
                differenceFromCurrentMonth = monthInt
            }
            let date = Date()
            let calendar = Calendar.current
            self.userCurrentTimeDayInt = calendar.component(.day, from: date)
            findDaysInMonth()
                customCalenderVM.findMonthName()
        }
        .onChange(of: dayInMonth, perform: { value in
            dayInMonth = value
            findDaysInMonth()
        })
        .onChange(of: changedMonth) { value in
            print(value)
        }
        
    }
    
    func findDaysInMonth() {
        if let monthInt = Calendar.current.dateComponents([.month], from: Date()).month {
            userCurrentTimeMonthInt = monthInt
        }
        if let currentDayInt = Calendar.current.dateComponents([.weekday], from: Date()).weekday {
            if changedMonth != 0 {
                highlightedDay = 0
            }else {
                highlightedDay = customCalenderVM.findHighlightedDay(day: currentDayInt)
            }
        }
        let difference = differenceFromCurrentMonth - differenceTime
        let nextMonth = Calendar.current.date(byAdding: .month, value: difference, to: Date())
        let calendar = Calendar.current
        startingDay = customCalenderVM.findWeekdayName(date: nextMonth!)
        let interval = calendar.dateInterval(of: .month, for: nextMonth!)!
        self.dayInMonth = calendar.dateComponents([.day], from: interval.start, to: interval.end).day!
        self.currentDayInt = Calendar.current.dateComponents([.day], from: Date()).day!
    }
}

struct CustomCalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCalenderView()
    }
}
