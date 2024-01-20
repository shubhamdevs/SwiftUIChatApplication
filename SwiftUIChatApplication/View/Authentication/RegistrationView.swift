//
//  RegistrationView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 20/01/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    
//    struct private let email: String
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack { Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .bold()
                Text("Welcome Back")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)
            }
            
            VStack(spacing: 28) {
                
                CustomTextField(imageName: "envelope",
                                placeholderText: "Email",
                                isSecureField: false,
                                text: $email)
                
                CustomTextField(imageName: "person", placeholderText: "Username", isSecureField: false, text: $userName)
                
                CustomTextField(imageName: "person", placeholderText: "Full Name", isSecureField: false, text: $fullName)
                
                CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
                
            }
            .padding([.top, .horizontal, .bottom], 32)
            
            Button(action: {
                print("Handle sign up..")
            }, label: {
                Text("Sign Up")
                    .font(.headline)
                    .frame(width: 340, height: 50)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding()
            })
            .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
            
            Spacer()
            
            
            Button(action: {mode.wrappedValue.dismiss()}, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .font(.system(size: 15, weight: .semibold))
                }
            }).padding(.bottom, 15)
        }
        .padding()
    }
}

#Preview {
    RegistrationView()
}
