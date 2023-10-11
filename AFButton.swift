//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Albert Florido  on 10/10/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
                }
}

#Preview {
    AFButton(title: "test title")
}
