//
//  HomeView.swift
//  OneMore
//
//  Created by Cedrick on 7/20/26.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowAddHabbit: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                WeekCalendarView()
                DailyRoutineView()
                Spacer()
            }
            .overlay(alignment: .bottomTrailing) {
                Button {
                    isShowAddHabbit = true
                } label: {
                    Image(systemName: "plus")
                        .font(.title2.bold())
                        .foregroundStyle(.white)
                        .frame(width: 65, height: 65)
                        .background(
                            Circle()
                                .fill(Color.orange)
                        )
                }
                .padding()
            }
            .padding(.top, 10)
            .background(Color(.systemGroupedBackground))
            .fullScreenCover(isPresented: $isShowAddHabbit) {
                NewHabitView()
            }
        }
    }
}

#Preview {
    HomeView()
}
