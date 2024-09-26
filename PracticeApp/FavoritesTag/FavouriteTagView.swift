//
//  FavouriteTagView.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 26/09/2024.
//

import SwiftUI

struct FavouriteTagView: View {
    @State var data: [FavoriteTagModel] = favoriteTags
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(data) { tags in
                    GeometryReader { geometry in
                        TagCardView(
                            title: tags.title,
                            image: tags.image,
                            totalAmount: tags.totalAmount,
                            isFav: true,
                            lastAmount: tags.lastAddedamount
                        )
                        .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0, y: 10.0, z: 0))
                    }
                    .frame(width: 300, height: 250)
                }
            }
            .padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width, height: 250)
    }
}

#Preview {
    FavouriteTagView()
//    TagCardView()
}


struct TagCardView: View {
        var title: String
        var image: String
        var totalAmount: Double
        var isFav: Bool
        var lastAmount: Double
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 30){
                Text (title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .foregroundStyle(Color.brown)
                    .frame(width: 50, height: 50)
            }
            
            VStack{
                HStack {
                    Text("Last Added:")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.secondaryLabel))
                    
                    Text("\(lastAmount.stringFormat)")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Text("1 week ago")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.secondaryLabel))
                }
                
                HStack {
                    Text("Total Amount:")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.secondaryLabel))
                    
                    Text("\(totalAmount.stringFormat)")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                  
                }
            }
        }
        .frame(width: 250, height: 200)
        .padding()
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 15))
        )
        .shadow(radius: 3)
    }
}

extension Double {
    var stringFormat: String {
        if self >= 1000 && self < 1000000 {
            return String(format: "%.1fK", self / 1000).replacingOccurrences(of: ".0", with: "")
        }
        
        if self >= 1000000 {
            return String(format: "%.1fM", self / 999999).replacingOccurrences(of: ".0", with: "")
        }
        
        return String(format: "%.0f", self)
    }
}
