//
//  WalletsView.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        ZStack {
            SummaryBackground()
            VStack (spacing: 0){
                SummaryHeader(title: "Summary")
                LastAddedAmountView()
                
                Text("Favorites")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color(.secondaryLabel))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                FavouriteTagView()
                Spacer()
            }
        }
    }
}

#Preview {
    SummaryView()
}
