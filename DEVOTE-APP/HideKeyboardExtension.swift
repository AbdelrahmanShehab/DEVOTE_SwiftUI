//
//  HideKeyboardExtension.swift
//  DEVOTE-APP
//
//  Created by Abdelrahman Shehab on 12/04/2023.
//

import SwiftUI

#if canImport(UIKit)

extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
