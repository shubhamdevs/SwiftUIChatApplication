//
//  SettingsHeaderView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 21/01/24.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Person's Name")
                    .font(.system(size: 18))
                
                Text("current status")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        .frame(height: 80)
        .background(Color(.white))
        .padding(.top, 30)
    }
}
