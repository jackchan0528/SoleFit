//
//  IntroductionView.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import SwiftUI

struct IntroductionView: View {
    @ObservedObject var viewModel: AuthenticationViewModel
    
    var body: some View {
            VStack(spacing: 30) {
                ZStack {
                    Text("Hi there:\nBefore we begin - have you recently made a SoleFit Care purchase?")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .padding(12)
                        .frame(alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 30)
                        .gradientBackground()
                }
                VStack {
                    Button("YES") {
                        viewModel.changeState(state: .signup)
                    }
                    .buttonStyle(GreenButton())
                    
                    Button("NO") {
                        viewModel.changeState(state: .signin)
                    }
                    .buttonStyle(GreenButton())
                }
            }
            .background(Color.clear)
    }
}

//#Preview {
//    IntroductionView()
//}
