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
        SWProduct(name: "Café Expresso", imgName: "CafeExpresso", descripcion: "Un shot de energia, con el toque de Scary Witches", price: 12.99, isFavorite: false, category: "Bebidas Calientes", rating: 4.8, numReviews: 812, inCart: false),
        SWProduct(name: "Café Americano", imgName: "CafeAmericano", descripcion: "Un café con energia para tu día", price: 25.0, isFavorite: true, category: "Bebidas", rating: 3.5, numReviews: 20, inCart: false),
        SWProduct(name: "Café Capuchino", imgName: "CafeCapuchino", descripcion: "El clasico capuchino que conoces pero con nuestro toque", price: 32.70, isFavorite: true, category: "Bebidas Calientes", rating: 4.0, numReviews: 20, inCart: false),
        SWProduct(name: "Cafpe Flatt White", imgName: "CafeFlattWhite", descripcion: "Nuestro Flatt White para tu paladar", price: 33.0, isFavorite: false, category: "Bebidas Calientes", rating: 2.7, numReviews: 20, inCart: false),
        SWProduct(name: "Cerveza", imgName: "Cerveza", descripcion: "Un placer para los días calurosos", price: 20.0, isFavorite: true, category: "Bebidas Frias", rating: 4.5, numReviews: 30, inCart: true),
        SWProduct(name: "Tarro Cerveza", imgName: "TarroCerveza", descripcion: "Nuestra cerveza de casa, en tamaño generoso", price: 25.0, isFavorite: true, category: "Bebidas Frias", rating: 4.6, numReviews: 40, inCart: false),
        SWProduct(name: "Copa de Vino", imgName: "CopaDeVino", descripcion: "El mejor secreto de nuestras cavas", price: 30.0, isFavorite: false, category: "Bebidas al tiempo", rating: 3.3, numReviews: 10, inCart: false),
        SWProduct(name: "Whisky en las Rocas", imgName: "Whisky", descripcion: "El mejor digestivo/acompañante para una tarde", price: 35.5, isFavorite: false , category: "Bebidas Frias", rating: 3.8, numReviews: 20, inCart: false),
        SWProduct(name: "Crepa Dulce", imgName: "CrepaDulce", descripcion: "Un postre para terminar tu día de la mejor manera", price: 27.0, isFavorite: true, category: "Postres", rating: 3.4, numReviews: 25 , inCart: false),
        SWProduct(name: "Crepa Salada", imgName: "CrepaSalada", descripcion: "Un complemento o entrada para ese apetito", price: 20.0, isFavorite: false, category: "Alimentos", rating: 3.0, numReviews: 10, inCart: false),
        SWProduct(name: "Plato de Quesos", imgName: "PlatoQuesos", descripcion: "El mejor acompañante para tu copa de vino", price: 35.0, isFavorite: true, category: "Alimentos", rating: 3.3, numReviews: 40, inCart: false)
        ]
}
