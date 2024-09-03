//
//  View.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import Foundation
import SwiftUI

extension View {
    func cardStyle(in color: Color = .foregroundAccent) -> some View {
        return modifier(Card(bgColor: color))
    }

    func dropShadow() -> some View {
        return modifier(DropShadow())
    }
}
