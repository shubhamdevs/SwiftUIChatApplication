//
//  SettingsCell.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 21/01/24.
//

import SwiftUI

struct SettingsCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "key.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(Color.yellow)
                    .foregroundStyle(.white)
                    .cornerRadius(6)
                
                Text("Account")
                    .font(.system(size: 15))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            .padding([.top, .horizontal])
            
            Divider()
                .padding(.leading)
            
        }
        .background(Color.white)
    }
}

#Preview {
    SettingsCell()
}
