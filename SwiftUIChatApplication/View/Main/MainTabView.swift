//
//  MainTabView.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 20/01/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                ConversationsView()
                    .tabItem { Image(systemName: "bubble.left") }
                
                ChannelsView()
                    .tabItem { Image(systemName: "bubble.left.and.bubble.right") }
                
                SettingsView()
                    .tabItem { Image(systemName: "gear") }
            }
        }
    }
}

#Preview {
    MainTabView()
}
