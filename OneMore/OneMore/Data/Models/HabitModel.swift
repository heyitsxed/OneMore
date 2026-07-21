//
//  HabitModel.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import Foundation
import SwiftUI

struct HabitModel: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let iconColor: Color
    let streak: Int
    let duration: String
    var completed: Bool
}
