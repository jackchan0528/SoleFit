//
//  ButtonStyleModifier.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import Foundation
import SwiftUI

struct GreenButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Roboto-Regular", size: 14))
            .foregroundColor(.white)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.primaryGreen)
                    .shadow(color: Color.secondaryGreen, radius: 0, x: 4, y: 4)
            )
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
    }

}
