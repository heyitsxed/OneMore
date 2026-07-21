//
//  HabitRow.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct HabitRow: View {
    
    @Binding var habit: HabitModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            VStack(spacing: 0) {
                Button {
                    withAnimation(.spring()) {
                        habit.completed.toggle()
                    }
                    
                } label: {
                    Circle()
                        .fill(habit.completed ? .orange : .gray.opacity(0.4))
                        .frame(width: 18, height: 18)
                }
                
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 2)
            }
            
            HStack {
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(habit.iconColor.opacity(0.15))
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: habit.icon)
                                .foregroundStyle(habit.iconColor)
                        }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(habit.title)
                            .font(.headline)
                        
                        Text("Streak \(habit.streak) days")
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                
                Divider()
                    .frame(height: 40)
                
                VStack(spacing: 8) {
                    Image(systemName: "clock.fill")
                        .foregroundStyle(.secondary)
                    
                    Text(habit.duration)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .frame(width: 55)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .shadow(color: .black.opacity(0.05), radius: 8)
        }
    }
}
