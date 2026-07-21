//
//  RootView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct RootView: View {

    @State private var showSplash = true

    var body: some View {

        if showSplash {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            showSplash = false
                        }
                    }
                }
        } else {
            HomeView()
        }
    }
}
