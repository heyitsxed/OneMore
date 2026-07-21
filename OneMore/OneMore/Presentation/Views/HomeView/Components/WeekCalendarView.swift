//
//  WeekCalendarView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct WeekCalendarView: View {
    
    private let calendar = Calendar.current
    private let week = Calendar.current.currentWeek()
    
    @State private var selectedDate = Date()
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    
                    ForEach(week) { day in
                        VStack(spacing: 10) {
                            
                            Text(day.dayName)
                                .font(.caption)
                                .foregroundStyle(
                                    calendar.isDate(day.date, inSameDayAs: selectedDate) ? .primary : .secondary
                                )
                                .fontWeight(
                                    calendar.isDate(day.date, inSameDayAs: selectedDate) ? .semibold : .regular
                                )
                            
                            Text("\(day.dayNumber)")
                                .font(.headline)
                                .fontWeight(.medium)
                                .frame(width: 50, height: 50)
                                .background(
                                    Circle()
                                        .fill(calendar.isDate(day.date, inSameDayAs: selectedDate) ? .orange : .white)
                                )
                                .foregroundStyle(
                                    calendar.isDate(day.date, inSameDayAs: selectedDate) ? .white : .black
                                )
                                .shadow(
                                    color: .black.opacity(0.08),
                                    radius: 6,
                                    y: 3
                                )
                        }
                        .id(day.dayNumber)
                        .onTapGesture {
                            selectedDate = day.date
                            
                            withAnimation {
                                proxy.scrollTo(day.dayNumber, anchor: .center)
                            }
                        }
                    }
                }
            }
            .onAppear {
                proxy.scrollTo(selectedDate, anchor: .center)
            }
            .padding()
            .background(Color(.systemGroupedBackground))
        }
    }
}
