//
//  LoginView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 20/01/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationView {
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
                    
                    VStack(spacing: 30) {
                        
                        CustomTextField(imageName: "envelope",
                                        placeholderText: "Email",
                                        isSecureField: false,
                                        text: $email)
                        
                        CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
                        
                    }
                    .padding([.top, .horizontal, .bottom], 32)
                }
                .padding(.leading)

                HStack {
                    
                    Spacer()
                     
                    NavigationLink(
                        destination: Text("Reset password"),
                        label: {
                            Text("Forget Password")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.trailing, 28)
                        })
                }
                
                Button(action: {
                    print("Handle sign up..")
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .frame(width: 340, height: 50)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(),
                               
                    label: {
                        HStack {
                            Text("Dont have an account?")
                                .font(.system(size: 14))
                                      
                            Text("Sign Up")
                                .font(.system(size: 15, weight: .semibold))
                    }
                }).padding(.bottom, 15)
            }
        }
    }
}


#Preview {
    LoginView()
}
