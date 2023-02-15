//
//  SplashScreenView.swift
//  VividApp
//
//  Created by Nouf  on 24/07/1444 AH.
//  Copyright © 1444 AH Geonseok Lee. All rights reserved.
//
// test nouf

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                if #available(iOS 14.0, *) {
                    Color("Nouf")
                        .ignoresSafeArea()
                } else {
                    // Fallback on earlier versions
                }
                VStack {
                    Image("Splash")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

