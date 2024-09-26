//
//  FavoriteTagModel.swift
//  PracticeApp
//
//  Created by Muhammad Zeeshan on 26/09/2024.
//

import Foundation

struct FavoriteTagModel: Identifiable {
    var id = UUID().uuidString
    
    var title: String
    var image: String
    var totalAmount: Double
    var isFav: Bool
    var lastAddedamount: Double
}


var favoriteTags: [FavoriteTagModel] = [
    FavoriteTagModel(title: "Car", image: "car.badge.gearshape.fill", totalAmount: 2000, isFav: true, lastAddedamount: 500),
    FavoriteTagModel(title: "Home Shopping", image: "car.badge.gearshape.fill", totalAmount: 2000, isFav: true, lastAddedamount: 500),
    FavoriteTagModel(title: "Fuel", image: "fuelpump.fill", totalAmount: 2000, isFav: true, lastAddedamount: 500),
    FavoriteTagModel(title: "Electricity", image: "bolt.fill", totalAmount: 2000, isFav: true, lastAddedamount: 500),
    FavoriteTagModel(title: "Friends", image: "figure.2.right.holdinghands", totalAmount: 2000, isFav: true, lastAddedamount: 500),
]
