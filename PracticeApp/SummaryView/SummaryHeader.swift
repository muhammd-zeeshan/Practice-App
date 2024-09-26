//
//  WalletHeader\.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct SummaryHeader: View {
    let title: String
    
    var body: some View {
        VStack{
            HStack(spacing: 60) {
                Image(systemName: "person.fill")
                    .renderingMode(.original)
                    .imageScale(.large)
                    .foregroundStyle(Color("Mainbgc").gradient)
                    .background(
                        Circle()
                            .fill(Color.white)
                            .frame(width: 40, height: 40)
                    )
                
                Text(title)
                    .font(.title)
                    .fontWeight(.medium)
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.vertical)
            
            QuickActions()
        }
        .padding(.leading)
        
    }
}

#Preview {
    SummaryHeader(title: "Wallets")
}
