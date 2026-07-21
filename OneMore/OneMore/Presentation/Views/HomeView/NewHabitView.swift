//
//  NewHabitView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct NewHabitView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var habitName = ""
    @State private var hasGoal = false
    @State private var hasRepeat = false
    @State private var reminderEnabled = true
    
    @State private var selectedDate = Date()
    @State private var amount = ""
    
    @State private var selectedDays: Set<String> = ["T"]
    
    let days = ["M","T","W","T","F","S","S"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    
                    HStack {
                        Text(AppStrings.Home.newHabit)
                            .font(.largeTitle.bold())
                        
                        Spacer()
                        
                        Button {
                            dismiss()
                        } label: {
                            
                            Image(systemName: "xmark")
                                .font(.title3)
                                .foregroundStyle(.black)
                                .frame(width: 50, height: 50)
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                    }
                    
                    HStack {
                        Spacer()
                        
                        Image(systemName: "calendar")
                            .font(.system(size: 90))
                            .foregroundStyle(.green)
                        
                        Spacer()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(AppStrings.Home.nameYourHabit)
                            .foregroundColor(.black)
                        
                        TextField(
                            AppStrings.Home.enterYourHabit,
                            text: $habitName
                        )
                        .padding()
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text(AppStrings.Home.setAGoal)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Toggle("", isOn: $hasGoal)
                                .labelsHidden()
                        }
                        
                        if hasGoal {
                            ZStack {
                                HStack {
                                    Text(AppStrings.Home.setATargetDate)
                                    
                                    Spacer()
                                    
                                    DatePicker(
                                        "",
                                        selection: $selectedDate,
                                        displayedComponents: .date
                                    )
                                    .labelsHidden()
                                    
                                }
                                .padding()
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text(AppStrings.Home.repeatDays)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Toggle("", isOn: $hasRepeat)
                                .labelsHidden()
                        }
                        
                        if hasRepeat {
                            HStack(spacing: 7) {
                                ForEach(Array(days.enumerated()), id: \.offset) { index, day in
                                    Button {
                                        if selectedDays.contains("\(day)\(index)") {
                                            selectedDays.remove("\(day)\(index)")
                                        } else {
                                            selectedDays.insert("\(day)\(index)")
                                        }
                                        
                                    } label: {
                                        
                                        Text(day)
                                            .fontWeight(.medium)
                                            .foregroundStyle(
                                                selectedDays.contains("\(day)\(index)")
                                                ? .white
                                                : .black
                                            )
                                            .frame(width: 45, height: 45)
                                            .background(
                                                selectedDays.contains("\(day)\(index)")
                                                ? Color.black
                                                : Color.white
                                            )
                                            .clipShape(Circle())
                                    }
                                }
                            }
                        }
                    }
                    
                    HStack {
                        Text(AppStrings.Home.getReminders)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Toggle("", isOn: $reminderEnabled)
                            .tint(.orange)
                            .labelsHidden()
                    }
                    
                    Button {
                        
                    } label: {
                        Text(AppStrings.Home.saveHabit)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Capsule())
                    }
                }
                .padding(.horizontal, 15)
            }
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    NewHabitView()
}
