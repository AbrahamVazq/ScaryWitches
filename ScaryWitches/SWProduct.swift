//  SWProduct.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 05/06/25.

import Foundation

struct SWProduct: Identifiable {
    let id = UUID()
    let name: String
    let imgName: String
    let descripcion: String
    let price: Double
    let isFavorite: Bool
    let category: String
    let rating: Double
    let numReviews: Int
    let inCart: Bool
}


extension SWProduct {
    static let sampleData: [SWProduct] = [
        SWProduct(name: "Witch Hat", imgName: "witch-hat", descripcion: "A classic witch hat", price: 12.99, isFavorite: false, category: "Accessories", rating: 4.8, numReviews: 812, inCart: false),
        SWProduct(name: "Chtulhu", imgName: "chtulhu-img", descripcion: "A Refresh of H.P. Lovecraft's classic drink", price: 25.99, isFavorite: true, category: "Drinks", rating: 4.8, numReviews: 12, inCart: false),
        ]
}
