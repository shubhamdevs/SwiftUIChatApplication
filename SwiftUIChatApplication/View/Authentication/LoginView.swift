//
//  LoginView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 20/01/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                VStack(alignment: .leading) {
                    HStack { Spacer()}
                    Text("Hello.")
                    Text("Welcome Back")
                        .foregroundStyle(.blue)
                    Spacer()
                }
                .padding()
                .font(.largeTitle)
                .bold()
                
                VStack {

                }
                
            }
        }
    }
}


#Preview {
    LoginView()
}
