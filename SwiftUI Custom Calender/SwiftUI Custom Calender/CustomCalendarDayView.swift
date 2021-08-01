//
//  CustomCalendarDayView.swift
//  SwiftUI Custom Calender
//
//  Created by Giray UÇAR on 31.07.2021.
//

import SwiftUI

struct CustomCalendarDayView: View {
    
    @Binding var highligtedDay : Int
    
    var body: some View {
        HStack {
            VStack {
                if highligtedDay == 1 {
                    Text("Mon")
                        .bold()
                }
                else {
                    Text("Mon")
                }
                Divider()
                    .background(highligtedDay == 1 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 1 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 2 {
                    Text("Tue")
                        .bold()
                }
                else {
                    Text("Tue")
                }
                Divider()
                    .background(highligtedDay == 2 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 2 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 3 {
                Text("Wed")
                    .bold()
            }
            else {
                Text("Wed")
            }
                Divider()
                    .background(highligtedDay == 3 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 3 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 4 {
                Text("Thu")
                    .bold()
            }
            else {
                Text("Thu")
            }
                Divider()
                    .background(highligtedDay == 4 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 4 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 5 {
                Text("Fri")
                    .bold()
            }
            else {
                Text("Fri")
            }
                Divider()
                    .background(highligtedDay == 5 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 5 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 6 {
                Text("Sat")
                    .bold()
            }
            else {
                Text("Sat")
            }
                Divider()
                    .background(highligtedDay == 6 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 6 ? Color.black : Color.gray)
            VStack {
                if highligtedDay == 7 {
                Text("Sun")
                    .bold()
            }
            else {
                Text("Sun")
            }
                Divider()
                    .background(highligtedDay == 7 ? Color.black : Color.gray.opacity(0.1))
            }.foregroundColor(highligtedDay == 7 ? Color.black : Color.gray)
        }.padding([.trailing,.leading,.top])
        .background(Color.white)
        .cornerRadius(20)
    }
}
