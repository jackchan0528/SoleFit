//
//  SwiftUIView.swift
//  SoleFit
//
//  Created by hocman on 12/6/2024.
//

import SwiftUI

struct PasswordSettingView: View {
    var body: some View {
        @State var confirmPassword: String = ""
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
                    Text("Almost ready!")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    VStack(alignment: .leading) {
                        Text("Enter Your Password")
                        TextFieldView(placeholder: "password", text: $password)
                            .padding(.vertical, 10)
                        Text("Enter Again")
                        TextFieldView(placeholder: "password", text: $confirmPassword)
                    }
                }
                .foregroundColor(.white)
                .padding(.vertical, 30)
                .padding(.horizontal)
                .frame(minHeight: 400)
                .gradientBackground()
                .cornerRadius(10)
                .padding(.horizontal, 30)
                NavigationLink("Sign Up") {
                    VideoView()
                }
                .buttonStyle(GreenButton())
            }
        }
    }
}

#Preview {
    PasswordSettingView()
}
