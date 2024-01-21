//
//  SettingsView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 21/01/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                SettingsHeaderView()
                
                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }
                
                Button(action: {
                    print("Handle Log out Here")
                }, label: {
                    Text("Log out")
                        .foregroundStyle(.red)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.white)
                })
                
                Spacer()
            }
        }
//        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    SettingsView()
}


