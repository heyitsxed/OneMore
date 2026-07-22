//
//  IconPickerView.swift
//  OneMore
//
//  Created by Cedrick on 7/22/26.
//

import SwiftUI

struct IconPickerView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @Binding var selectedIcon: String
    
    private let columns = [
        GridItem(.adaptive(minimum: 60))
    ]
    
    let habitIcons: [HabitIcon] = [
        .init(symbol: "drop.fill"),
        .init(symbol: "book.fill"),
        .init(symbol: "figure.walk"),
        .init(symbol: "figure.run"),
        .init(symbol: "dumbbell.fill"),
        .init(symbol: "heart.fill"),
        .init(symbol: "leaf.fill"),
        .init(symbol: "moon.fill"),
        .init(symbol: "sun.max.fill"),
        .init(symbol: "cup.and.saucer.fill"),
        .init(symbol: "fork.knife"),
        .init(symbol: "flame.fill"),
        .init(symbol: "brain.head.profile"),
        .init(symbol: "pills.fill"),
        .init(symbol: "bed.double.fill"),
        .init(symbol: "laptopcomputer"),
        .init(symbol: "desktopcomputer"),
        .init(symbol: "music.note"),
        .init(symbol: "paintbrush.fill"),
        .init(symbol: "camera.fill"),
        .init(symbol: "figure.cooldown"),
        .init(symbol: "figure.yoga"),
        .init(symbol: "figure.strengthtraining.traditional"),
        .init(symbol: "bicycle"),
        .init(symbol: "figure.hiking"),
        .init(symbol: "figure.mind.and.body"),
        .init(symbol: "water.waves"),
        .init(symbol: "gamecontroller.fill"),
        .init(symbol: "checkmark.circle.fill"),
        .init(symbol: "calendar")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Choose Icon")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            LazyVGrid(columns: columns, spacing: 20) {
                
                ForEach(habitIcons) { icon in
                    
                    Button {
                        
                        selectedIcon = icon.symbol
                        dismiss()
                        
                    } label: {
                        
                        Image(systemName: icon.symbol)
                            .font(.title)
                            .frame(width: 55, height: 55)
                            .background(
                                selectedIcon == icon.symbol
                                ? Color.orange.opacity(0.2)
                                : Color.gray.opacity(0.1)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    .buttonStyle(.plain)
                    
                }
            }
            
            Spacer()
        }
        .padding()
    }
}
