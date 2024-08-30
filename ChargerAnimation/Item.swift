//
//  Item.swift
//  ChargerAnimation
//
//  Created by Giang Phạm on 31/08/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
