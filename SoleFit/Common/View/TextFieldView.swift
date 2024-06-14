//
//  TextFieldView.swift
//  SoleFit
//
//  Created by hocman on 13/6/2024.
//

import SwiftUI

struct TextFieldView: View {
    var placeholder: String
    var backgroundColor: Color?
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(backgroundColor ?? Color.black.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
//#Preview {
//    TextFieldView()
//}
