//
//  ChargerAnimationApp.swift
//  ChargerAnimation
//
//  Created by Giang Phạm on 31/08/2024.
//

import SwiftUI
import SwiftData
import AppIntents


@main
struct ChargerAnimationApp: App {
    @State private var isCharging = false
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UIDevice.current.isBatteryMonitoringEnabled = true
                    NotificationCenter.default.addObserver(forName: UIDevice.batteryStateDidChangeNotification, object: nil, queue: .main) { _ in
                        updateBatteryState()
                    }
                }
                .onDisappear {
                    NotificationCenter.default.removeObserver(self, name: UIDevice.batteryStateDidChangeNotification, object: nil)
                }
                .fullScreenCover(isPresented: $isCharging) {
                    ChargingView()
                }
                .onChange(of: scenePhase) {_, newPhase in
                     updateBatteryState()
                }

        }

    }
    
    private func updateBatteryState() {
        let batteryState = UIDevice.current.batteryState
        isCharging = (batteryState == .charging || batteryState == .full)
    }
}
