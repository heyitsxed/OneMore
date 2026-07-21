//
//  DailyRoutineView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct DailyRoutineView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(AppStrings.Home.dailyRoutine)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(AppStrings.Home.seeAll) {
                    
                }
                .font(.subheadline)
            }
            
            ScrollView(showsIndicators: false) {
                ForEach($viewModel.habits) { $habit in
                    HabitRow(habit: $habit)
                        .padding(.vertical, 3)
                        .onTapGesture {
                            habit.completed.toggle()
                        }
                }
            }
        }
        .padding()
    }
}
