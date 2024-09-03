//
//  DropShadow.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import Foundation
import SwiftUI

struct DropShadow: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .shadow(color: .black.opacity(0.1), radius: 10)
    }
}


