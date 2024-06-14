//
//  ViewExtension.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import Foundation
import SwiftUI


extension View {
    func gradientBackground(_ colors: [Color] = [Color.primaryGreen, Color.secondaryGreen]) -> some View {
        self
            .background(
                Rectangle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: colors),
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .opacity(0.75)
            )
    }
}
