//
//  HomeView.swift
//  OneMore
//
//  Created by Cedrick on 7/20/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView()
            WeekCalendarView()
            DailyRoutineView()
            Spacer()
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                
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
    }
}

#Preview {
    HomeView()
}
