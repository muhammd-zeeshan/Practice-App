//
//  LasAddedAmountView .swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct LastAddedAmountView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .circular)
            .fill(.ultraThinMaterial.opacity(0.90))
            .frame(width: 350, height: 200)
            .padding(.vertical)
            .overlay {
                VStack(spacing: 10) {
                    Text("Last Added Amount")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.secondaryLabel))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack(alignment: .bottom) {
                        Text("1.2k")
                            .font(.system(size: 50, weight: .heavy, design: .rounded))
                            .foregroundStyle(Color("buttonsbgc"))
                        Spacer()
                        
                        VStack{
                            Text("5min ago")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Text("2024-Jan-2")
                                .font(.headline)
                                .fontWeight(.semibold)
                        }
                        .foregroundStyle(Color(.secondaryLabel))
                    }
                    
                    HStack {
                        Image(systemName: "house.fill")
                            .font(.title2)
                            .foregroundStyle(Color.indigo)
                        Text("Home")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("Review Tag")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.secondaryLabel))
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color(.secondaryLabel))
                    }
                    .padding()
                    .frame(height: 70)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color(.separator), radius: 5, x: 0, y: 5)
                }
                .padding()
            }
    }
}

#Preview {
    LastAddedAmountView()
}
