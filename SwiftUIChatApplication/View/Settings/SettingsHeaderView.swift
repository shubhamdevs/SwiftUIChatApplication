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
            Image("anindita")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Anindita Ghosh")
                    .font(.system(size: 18))
                
                Text("status: Sleeping😴")
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


#Preview {
    SettingsHeaderView()
}
