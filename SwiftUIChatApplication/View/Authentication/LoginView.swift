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
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    HStack { Spacer()}
                    Text("Hello.")
                    Text("Welcome Back")
                        .foregroundStyle(.blue)
                }
                .padding()
                .font(.largeTitle)
                .bold()
                
                
                VStack(spacing: 20) {
                    
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }
                .padding([.top, .horizontal], 32)
                
                Spacer()
            }
        }
    }
}


#Preview {
    LoginView()
}
