//
//  OpenMyAppIntent.swift
//  ChargerAnimation
//
//  Created by Giang Phạm on 31/08/2024.
//

import SwiftUI
import AppIntents

@available(iOS 17.0, *)
struct OpenMyAppIntent: AppIntent {
    static var title: LocalizedStringResource = "ChargingAnimation"
    static var description = IntentDescription("Shortcut to open app")
    static var openAppWhenRun: Bool = true

    
    @MainActor
     func perform() async throws -> some IntentResult {
         
         return .result()
     }
}
