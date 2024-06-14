//
//  MainView.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import SwiftUI

struct AuthenticationMainView: View {
    
    @ObservedObject var viewModel = AuthenticationViewModel()
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("HomepageBg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                Color.white
                    .opacity(0.5)
                VStack {
                    switch viewModel.state {
                        case .introduction:
                            IntroductionView(viewModel: viewModel)
                        case .signin:
                            SignInView ()
                        case .signup:
                            SignInView ()
                        case .setPassword:
                            PasswordSettingView()
                        case .verifyPhone:
                            PasswordSettingView()
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    AuthenticationMainView()
}
