//
//  SplashView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct SplashView: View {

    @State private var isActive = false

    var body: some View {
        ZStack {
            Color(red: 250/255, green: 250/255, blue: 248/255)
                .ignoresSafeArea()

            Image("splash-screen")
                .resizable()
                .scaledToFit()
                .scaleEffect(isActive ? 1 : 0.85)
                .opacity(isActive ? 1 : 0)
                .animation(.easeOut(duration: 0.5), value: isActive)
        }
        .onAppear {
            isActive = true
        }
    }
}

#Preview {
    SplashView()
}
