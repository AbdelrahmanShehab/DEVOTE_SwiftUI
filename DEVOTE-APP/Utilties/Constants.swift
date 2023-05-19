//
//  Constants.swift
//  DEVOTE-APP
//
//  Created by Abdelrahman Shehab on 12/04/2023.
//

import SwiftUI

// MARK: -  FORMATTER
 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: -  UI

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

// MARK: -  UX
let feedback = UINotificationFeedbackGenerator()

