//
//  HomeViewModel.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import Combine
import Foundation
import SwiftUI

@MainActor
class HomeViewModel: ObservableObject {
    @Published var habits: [HabitModel] = [
        HabitModel(
            title: "Drink a glass of water",
            icon: "drop.fill",
            iconColor: .orange,
            streak: 3,
            duration: "5 min",
            completed: false
        ),
        HabitModel(
            title: "Meditate to relax",
            icon: "figure.mind.and.body",
            iconColor: .green,
            streak: 6,
            duration: "15 min",
            completed: true
        ),
        HabitModel(
            title: "Stretch for 10 minutes",
            icon: "figure.cooldown",
            iconColor: .pink,
            streak: 5,
            duration: "10 min",
            completed: false
        ),HabitModel(
            title: "Go for a short walk",
            icon: "figure.walk",
            iconColor: .green,
            streak: 6,
            duration: "15 min",
            completed: true
        ),HabitModel(
            title: "Go for a long run",
            icon: "figure.run",
            iconColor: .green,
            streak: 6,
            duration: "15 min",
            completed: true
        )
    ]
}
