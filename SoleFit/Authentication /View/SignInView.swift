//
//  SwiftUIView.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        @State var username: String = ""
        @State var password: String = ""
        
        ZStack {
            Image("HomepageBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Color.white
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                VStack(spacing: 30) {
                    Image("Logo")
                    HStack {
                        Text("Don’t have an account?")
                        Text("Sign-up >>")
                            .underline()
                    }
                    VStack(alignment: .leading) {
                        Text("Account")
                        TextFieldView(placeholder: "account", text: $username)
                            .padding(.vertical, 10)
                        Text("Password")
                        TextFieldView(placeholder: "password", text: $password)
                    }
                }
                .foregroundColor(.white)
                .padding(.vertical, 30)
                .padding(.horizontal)
                .gradientBackground()
                .cornerRadius(10)
                .padding(.horizontal, 30)
                NavigationLink("Login") {
                    VideoView()
                }
                .buttonStyle(GreenButton())
            }
        }
    }
}

#Preview {
    SignInView()
}
