//
//  CustomTextField.swift
//  SwiftUIChatApplication
//
//  Created by Shubham Biswas on 20/01/24.
//

import SwiftUI

struct  CustomTextField: View {
    let imageName: String
    let placeholderText: String
    let isSecureField: Bool
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                
            
            if isSecureField {
                SecureField(placeholderText, text: $text)
                    
            } else {
                TextField(placeholderText, text: $text)
                    
            }
        }
        
        Divider()
    }
}


