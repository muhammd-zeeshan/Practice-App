//
//  TabView.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 26/09/2024.
//

import SwiftUI

struct TabItemView: View {
    @State private var selected = 2
    
    var body: some View {
        TabView(selection: $selected) {
            Text("")
                .tabItem {
                    Label("Shared", systemImage: "arrowshape.turn.up.forward.fill")
                }.tag(1)
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "star")
                }.tag(2)
            Text("Wallets")
                .tabItem {
                    Label("Wallet", systemImage: "wallet.bifold")
                }.tag(3)
        }
        .tint(Color.black)
    }
}

#Preview {
    TabItemView()
}
