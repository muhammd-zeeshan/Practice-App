//
//  WalletsBackground.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct SummaryBackground: View {
    var body: some View {
        GeometryReader{ geometry in
            Rectangle()
                .fill(Color("Mainbgc").gradient)
                .ignoresSafeArea()
                .frame(height: geometry.size.height / 2.5)
        }
    }
}

#Preview {
    SummaryBackground()
}
