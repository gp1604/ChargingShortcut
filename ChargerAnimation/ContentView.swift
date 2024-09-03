//
//  ContentView.swift
//  ChargerAnimation
//
//  Created by Giang Phạm on 31/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var isCharging = false

    var body: some View {
        ZStack {
            // Nội dung chính của app
            Text("Main View")
            
            // Hiển thị view khi đang sạc
            if isCharging {
                ChargingView()
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
    }
}

struct ChargingView: View {
    var body: some View {
        VStack {
            Text("Charging...")
                .font(.largeTitle)
                .foregroundColor(.white)
            Image(systemName: "battery.100.bolt")
                .font(.system(size: 100))
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.8))
        .edgesIgnoringSafeArea(.all)
    }
}
