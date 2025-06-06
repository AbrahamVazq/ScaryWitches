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
