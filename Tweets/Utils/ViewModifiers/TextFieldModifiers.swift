//
//  TextFieldModifiers.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 16.01.2026.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .textInputAutocapitalization(.none)
            .autocorrectionDisabled(true)
    }
}

extension View {
    func threadsTextFieldStyle() -> some View {
        modifier(ThreadsTextFieldModifier())
    }
}
