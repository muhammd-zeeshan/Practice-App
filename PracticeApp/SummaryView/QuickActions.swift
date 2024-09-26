//
//  QuickActions.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 25/09/2024.
//

import SwiftUI

struct QuickActions: View {
    @State var text: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Quick actions")
                .font(.title)
                .fontWeight(.light)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    Circle()
                        .fill(Color("buttonsbgc"))
                        .frame(width: 50, height: 50)
                        .overlay {
                            ZStack {
                                Circle()
                                    .fill(Color.white.opacity(0.2))
                                    .frame(width: 35, height: 35)
                                
                                Image(systemName: "plus")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color.white)
                            }
                        }
                    QuickActionButtons(label: "Add Income", shapeColor: Color("buttonsbgc"))
                    QuickActionButtons(label: "Add Expense", shapeColor: Color("buttonsbgc"))
                    QuickActionButtons(label: "New Wallet", shapeColor: Color("buttonsbgc"))
                    QuickActionButtons(label: "New Tag", shapeColor: Color("buttonsbgc"))
                }
            }
        }
    }
}

#Preview {
    QuickActions()
}
