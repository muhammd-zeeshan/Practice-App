//
//  QuickActionButtons.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct QuickActionButtons: View {
    var label: String
    var shapeColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
                .foregroundStyle(Color.white)
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(shapeColor)
                .clipShape(Capsule())
        }
       
    }
}

#Preview {
    QuickActionButtons(label: "Add New", shapeColor: .blue)
}
